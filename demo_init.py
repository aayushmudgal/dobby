import copy
import actionlib
import rospy
import ipdb
from math import sin, cos
from moveit_python import (MoveGroupInterface,
                           PlanningSceneInterface,
                           PickPlaceInterface)
from moveit_python.geometry import rotate_pose_msg_by_euler_angles

from control_msgs.msg import FollowJointTrajectoryAction, FollowJointTrajectoryGoal
from control_msgs.msg import PointHeadAction, PointHeadGoal
from grasping_msgs.msg import FindGraspableObjectsAction, FindGraspableObjectsGoal
from geometry_msgs.msg import PoseStamped
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from moveit_msgs.msg import PlaceLocation, MoveItErrorCodes
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint

# ROS Image message
from sensor_msgs.msg import Image
# ROS Image message -> OpenCV2 image converter
from cv_bridge import CvBridge, CvBridgeError
# OpenCV2 for saving an image
import cv2

from sensor_msgs.msg import Image
# from sensor_msgs.m
# Instantiate CvBridge
bridge = CvBridge()
TOL = 0.0154
STACK = True
def image_callback(msg):
    print("Received an image!")
    try:
        # Convert your ROS Image message to OpenCV2
        cv2_img = bridge.imgmsg_to_cv2(msg, "bgr8")
    except CvBridgeError, e:
        print(e)
    else:
        # Save your OpenCV2 image as a jpeg 
        cv2.imwrite('camera_image.jpeg', cv2_img)

# Move base using navigation stack
class MoveBaseClient(object):
    def __init__(self):
        self.client = actionlib.SimpleActionClient("move_base", MoveBaseAction)
        rospy.loginfo("Waiting for move_base...")
        self.client.wait_for_server()
    def goto(self, x, y, theta, frame="map"):
        move_goal = MoveBaseGoal()
        move_goal.target_pose.pose.position.x = x
        move_goal.target_pose.pose.position.y = y
        move_goal.target_pose.pose.orientation.z = sin(theta/2.0)
        move_goal.target_pose.pose.orientation.w = cos(theta/2.0)
        move_goal.target_pose.header.frame_id = frame
        move_goal.target_pose.header.stamp = rospy.Time.now()
        # TODO wait for things to work
        self.client.send_goal(move_goal)
        self.client.wait_for_result()

# Send a trajectory to controller
class FollowTrajectoryClient(object):
    def __init__(self, name, joint_names):
        self.client = actionlib.SimpleActionClient("%s/follow_joint_trajectory" % name,
                                                   FollowJointTrajectoryAction)
        rospy.loginfo("Waiting for %s..." % name)
        self.client.wait_for_server()
        self.joint_names = joint_names
    def move_to(self, positions, duration=5.0):
        if len(self.joint_names) != len(positions):
            print("Invalid trajectory position")
            return False
        trajectory = JointTrajectory()
        trajectory.joint_names = self.joint_names
        trajectory.points.append(JointTrajectoryPoint())
        trajectory.points[0].positions = positions
        trajectory.points[0].velocities = [0.0 for _ in positions]
        trajectory.points[0].accelerations = [0.0 for _ in positions]
        trajectory.points[0].time_from_start = rospy.Duration(duration)
        follow_goal = FollowJointTrajectoryGoal()
        follow_goal.trajectory = trajectory
        self.client.send_goal(follow_goal)
        self.client.wait_for_result()

# Point the head using controller
class PointHeadClient(object):
    def __init__(self):
        self.client = actionlib.SimpleActionClient("head_controller/point_head", PointHeadAction)
        rospy.loginfo("Waiting for head_controller...")
        self.client.wait_for_server()
    def look_at(self, x, y, z, frame, duration=1.0):
        goal = PointHeadGoal()
        goal.target.header.stamp = rospy.Time.now()
        goal.target.header.frame_id = frame
        goal.target.point.x = x
        goal.target.point.y = y
        goal.target.point.z = z
        goal.min_duration = rospy.Duration(duration)
        self.client.send_goal(goal)
        self.client.wait_for_result()

class coordPoint(object):
    def __init__(self,x,y):
        self.x = x
        self.y = y
# Tools for grasping
class GraspingClient(object):
    def __init__(self):
        self.scene = PlanningSceneInterface("base_link")
        print self.scene

        self.pickplace = PickPlaceInterface("arm", "gripper", verbose=True)
        self.move_group = MoveGroupInterface("arm", "base_link")
        find_topic = "basic_grasping_perception/find_objects"
        rospy.loginfo("Waiting for %s..." % find_topic)
        self.find_client = actionlib.SimpleActionClient(find_topic, FindGraspableObjectsAction)
        self.find_client.wait_for_server()
        
        self.table_coords = {}
        self.table_coords['A'] = coordPoint(0.83994716,-0.27965291)
        self.table_coords['D'] = coordPoint(  1.60081279,-0.18077163)
        self.table_coords['C'] = coordPoint(  1.51827002, 0.60569918)
        self.table_coords['B'] = coordPoint(   0.72390264   , 0.50937384)
        self.table_valid = coordPoint( 0.83994718, -0.27965290)

#         self.table_coords['A'] = coordPoint(0.744186162949,-0.43282610178)
#         self.table_coords['D'] = coordPoint(  1.50396096706,-0.443462908268)
#         self.table_coords['C'] = coordPoint(  1.50396096706,0.383939862251)
#         self.table_coords['B'] = coordPoint(   0.744186162949   , 0.50937384)
#         self.table_valid = coordPoint( 0.744186162949,-0.43282610178)

# #           x: 0.744186162949
#             y: 0.383939862251

#         x: 0.772125720978
# y: -0.43282610178
# z: 0.800881803036

# x: 1.50396096706
# y: -0.443462908268
# z: 0.79058277607


        


    def updateScene(self):
        # find objects
        goal = FindGraspableObjectsGoal()
        goal.plan_grasps = True
        self.find_client.send_goal(goal)
        self.find_client.wait_for_result(rospy.Duration(5.0))
        find_result = self.find_client.get_result()
        # remove previous objects
        for name in self.scene.getKnownCollisionObjects():
            self.scene.removeCollisionObject(name, False)
        for name in self.scene.getKnownAttachedObjects():
            self.scene.removeAttachedObject(name, False)
        self.scene.waitForSync()
        # insert objects to scene
        idx = -1
        for obj in find_result.objects:
            idx += 1
            obj.object.name = "object%d"%idx
            self.scene.addSolidPrimitive(obj.object.name,
                                         obj.object.primitives[0],
                                         obj.object.primitive_poses[0],
                                         wait = False)
        for obj in find_result.support_surfaces:
            # extend surface to floor, and make wider since we have narrow field of view
            height = obj.primitive_poses[0].position.z
            obj.primitives[0].dimensions = [obj.primitives[0].dimensions[0],
                                            1.5,  # wider
                                            obj.primitives[0].dimensions[2] + height]
            obj.primitive_poses[0].position.z += -height/2.0
            # add to scene
            self.scene.addSolidPrimitive(obj.name,
                                         obj.primitives[0],
                                         obj.primitive_poses[0],
                                         wait = False)
        self.scene.waitForSync()
        # store for grasping
        self.objects = find_result.objects
        self.surfaces = find_result.support_surfaces
    
    def in_searchable_area(self, obj,tol=TOL):
        
        x_coord_object =  obj.primitive_poses[0].position.x
        y_coord_object = obj.primitive_poses[0].position.y
        x_coord_table = self.table_valid.x +tol
        y_coord_table = self.table_valid.y +tol

        # if x_coord_table > x_coord_object and y_coord_table > y_coord_object:
        #     return True

        # return False
        # if x_coord_object < x_coord_table and y_coord_object < y_coord_table:
        #     diff1 =  x_coord_object - x_coord_table
        #     diff2 = y_coord_object - y_coord_table
        #     rospy.loginfo("Rejected 1 Object")
        #     rospy.loginfo("Missed searchable area by x = "+ str(diff1)+" and y = "+ str(diff2))
           

        #     return False

        # return True
        if self.table_valid.x +tol < obj.primitive_poses[0].position.x and \
            self.table_valid.y + tol < obj.primitive_poses[0].position.y:
            return True
        else:
            
            diff1 =  obj.primitive_poses[0].position.x  - self.table_valid.x + tol
            diff2 = obj.primitive_poses[0].position.y - self.table_valid.y + tol
            rospy.loginfo("Rejected 1 Object")
            rospy.loginfo("Missed searchable area by x = "+ str(diff1)+" and y = "+ str(diff2))
            return False

            
        return False

    def getGraspableCube(self):
        graspable = None
        detectable_obj_poses = []
        for obj in self.objects:
            # need grasps
            if len(obj.grasps) < 1:
                rospy.logwarn("No Grasps")
                continue
            # check size
            if obj.object.primitives[0].dimensions[0] < 0.05 or \
               obj.object.primitives[0].dimensions[0] > 0.07 or \
               obj.object.primitives[0].dimensions[0] < 0.05 or \
               obj.object.primitives[0].dimensions[0] > 0.07 or \
               obj.object.primitives[0].dimensions[0] < 0.05 or \
               obj.object.primitives[0].dimensions[0] > 0.07:
                continue
            # add only if it is in valid region
            # detectable_obj_poses.append((obj.object,obj.grasps))
            if self.in_searchable_area(obj.object):
                detectable_obj_poses.append((obj.object,obj.grasps))
            else:
                rospy.loginfo("Object not in searchable scene")
            # has to be on table
            # if obj.object.primitive_poses[0].position.z < 0.5 or \
            #  or obj.object.primitive_poses[0].position.x < rx[0] or \
            #  or obj.object.primitive_poses[0].position.x > rx[1] or \
            #  or obj.object.primitive_poses[0].position.y < ry[0] or \
            #  or obj.object.primitive_poses[0].position.y > ry[1] :
            #     continue
        if self.objects:
            return detectable_obj_poses
            # return obj.object, obj.grasps
        # nothing detected
        return None, None
    def getSupportSurface(self, name):
        for surface in self.support_surfaces:
            if surface.name == name:
                return surface
        return None
    def getPlaceLocation(self):
        pass
    def pick(self, block, grasps):
        success, pick_result = self.pickplace.pick_with_retry(block.name,
                                                              grasps,
                                                              support_name=block.support_surface,
                                                              scene=self.scene)
        self.pick_result = pick_result
        return success
    def place(self, block, pose_stamped):
        places = list()
        l = PlaceLocation()
        l.place_pose.pose = pose_stamped.pose
        l.place_pose.header.frame_id = pose_stamped.header.frame_id
        # copy the posture, approach and retreat from the grasp used
        l.post_place_posture = self.pick_result.grasp.pre_grasp_posture
        l.pre_place_approach = self.pick_result.grasp.pre_grasp_approach
        l.post_place_retreat = self.pick_result.grasp.post_grasp_retreat
        places.append(copy.deepcopy(l))
        # create another several places, rotate each by 360/m degrees in yaw direction
        m = 16 # number of possible place poses
        pi = 3.141592653589
        for i in range(0, m-1):
            l.place_pose.pose = rotate_pose_msg_by_euler_angles(l.place_pose.pose, 0, 0, 2 * pi / m)
            places.append(copy.deepcopy(l))
        success, place_result = self.pickplace.place_with_retry(block.name,
                                                                places,
                                                                scene=self.scene)
        return success

    def tuck(self):
        joints = ["shoulder_pan_joint", "shoulder_lift_joint", "upperarm_roll_joint",
                  "elbow_flex_joint", "forearm_roll_joint", "wrist_flex_joint", "wrist_roll_joint"]
        pose = [1.32, 1.40, -0.2, 1.72, 0.0, 1.66, 0.0]
        while not rospy.is_shutdown():
            result = self.move_group.moveToJointPosition(joints, pose, 0.02)
            if result.error_code.val == MoveItErrorCodes.SUCCESS:
                return


    def put_valid(self,cube, x, y,z):

        # is always a valid placement
        pose = PoseStamped()
        pose.pose = cube.primitive_poses[0]
        # Experimental position
        pose.pose.position.x = x
        pose.pose.position.y = y
        pose.pose.position.z += z
        
        # pose.pose.position.z += 0.05
        pose.header.frame_id = cube.header.frame_id
        if self.place(cube, pose):
            return True
            # break
        rospy.logwarn("Placing failed.")
        return False

    def is_update_table_valid(self,x,y):

        if self.table_valid.x+x > max(self.table_coords['B'].x,self.table_coords['C'].x):
            rospy.loginfo("Out of Bounds for X")
            return False
        if self.table_valid.x + x < min(self.table_coords['A'].x, self.table_coords['D'].x):
            rospy.loginfo("Out of bounds for min x")
            return False
        if self.table_valid.y+y > max(self.table_coords['D'].y,self.table_coords['C'].y):
            rospy.loginfo("Out of bounds for max y")
            return False
        if self.table_valid.y + y < min(self.table_coords['A'].y,self.table_coords['B'].y):
            rospy.loginfo("Out of bounds for min y")
            return False
        return True

    def update_table_valid(self,x,y):

        if(self.is_update_table_valid(x,y)):
            rospy.loginfo("Valid Update")
            
            return True
        else:
            rospy.loginfo("Update will be invalid, so no action")
            return False
        return False



    def put(self,cube, x,y,z, tol=TOL):


        if self.update_table_valid(x,y):

                # update table
            if self.put_valid(cube, self.table_valid.x+x, self.table_valid.y+y,z):
                rospy.loginfo("Updated Valid space")
                self.table_valid.x =self.table_valid.x+x+tol
                self.table_valid.y =self.table_valid.y +y+tol
                return True
            else:
                rospy.loginfo("Failed while placing")
                # return False
            # except:
            #     rospy.loginfo("Valid Space not updated in function put")

        else:
            rospy.loginfo("Update Table Valid Not possible")
        return False

            # valid update, performe the update
            # i have updated the valid co-ordinates

    # def get(self,):
    #     self.updateScene()
    #     cube, grasps = self.getGraspableCube()
    #     if cube == None:
    #         rospy.logwarn("Perception failed.")
    #         return "Perception Failed"
    #     # Pick the block
    #     return self.pick(cube, grasps), cube, grasps
    def get(self,):
        self.updateScene()
        detectable_obj_poses = self.getGraspableCube()
        # if cube == None:
        #     rospy.logwarn("Perception failed.")
        #     return "Perception Failed"
        # # Pick the block
        rospy.loginfo("Found #"+str(len(detectable_obj_poses))+" objects")
        return detectable_obj_poses
        return self.pick(cube, grasps), cube, grasps
    
    
        


# Tools for grasping
# class CameraClient(object):
#     def __init__(self):
#         self.scene = PlanningSceneInterface("base_link")
#         print self.scene

#         self.pickplace = PickPlaceInterface("arm", "gripper", verbose=True)
#         self.move_group = MoveGroupInterface("arm", "base_link")
#         find_topic = "head_camera/depth_registered/points"
#         rospy.loginfo("Waiting for %s..." % find_topic)
#         self.find_client = actionlib.SimpleActionClient(find_topic, FindGraspableObjectsAction)
#         self.find_client.wait_for_server()
#     def updateScene(self):


if __name__ == '__main__':
    rospy.init_node("demo")

    # Make sure sim time is working
    while not rospy.Time.now():
        pass

    # Setup clients
    move_base = MoveBaseClient()
    torso_action = FollowTrajectoryClient("torso_controller", ["torso_lift_joint"])
    head_action = PointHeadClient()
    grasping_client = GraspingClient()
    # camera_client = CameraClient()



    # Move the base to be in front of the table
    # Demonstrates the use of the navigation stack
    rospy.loginfo("Moving to table...")
    move_base.goto(0.9,0,0)

    rospy.loginfo("Raising torso...")
    torso_action.move_to([0.4, ])

    # # Point the head at the cube we want to pick
    # head_action.look_at(3.7, 3.18, 0.0, "map")

    # # Get block to pick
    # while not rospy.is_shutdown():
    #     rospy.loginfo("Picking object...")
    #     grasping_client.updateScene()
    #     cube, grasps = grasping_client.getGraspableCube()
    #     if cube == None:
    #         rospy.logwarn("Perception failed.")
    #         continue

    #     # Pick the block
    #     if grasping_client.pick(cube, grasps):
    #         break
    #     rospy.logwarn("Grasping failed.")

    # # Tuck the arm
    # grasping_client.tuck()

    # # Lower torso
    # rospy.loginfo("Lowering torso...")
    # torso_action.move_to([0.0, ])

    # # Move to second table
    # rospy.loginfo("Moving to second table...")
    # move_base.goto(-3.53, 3.75, 1.57)
    # move_base.goto(-3.53, 4.15, 1.57)

    # # Raise the torso using just a controller
    # rospy.loginfo("Raising torso...")
    # torso_action.move_to([0.4, ])

    # # Place the block
    # while not rospy.is_shutdown():
    #     rospy.loginfo("Placing object...")
    #     pose = PoseStamped()
    #     pose.pose = cube.primitive_poses[0]
    #     pose.pose.position.z += 0.05
    #     pose.header.frame_id = cube.header.frame_id
    #     if grasping_client.place(cube, pose):
    #         break
    #     rospy.logwarn("Placing failed.")

    # # Tuck the arm, lower the torso
    # grasping_client.tuck()
    # torso_action.move_to([0.0, ])