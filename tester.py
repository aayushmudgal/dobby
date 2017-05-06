import ipdb
from demo_init import *
rospy.init_node("demo")
import ipdb
# Make sure sim time is working
while not rospy.Time.now():
    pass

# Setup clients
move_base = MoveBaseClient()
torso_action = FollowTrajectoryClient("torso_controller", ["torso_lift_joint"])
head_action = PointHeadClient()
grasping_client = GraspingClient()
ipdb.set_trace()
iteration = 0
while not rospy.is_shutdown():
        rospy.loginfo("Picking object...")        
        cube_grasps = grasping_client.get()
        ipdb.set_trace()
        if cube_grasps[0][0] == None:
            rospy.logwarn("Perception failed.")
            continue
        if grasping_client.pick(cube_grasps[0][0],cube_grasps[0][1]):
            iteration=0
            break
        rospy.logwarn("Grasping failed.")
        iteration += 1
        if iteration == 3:
            grasping_client.tuck()
            rospy.loginfo("Tried 3 attempts No success, Trying to tuck, and restart the process")
            iteration = 0
while not rospy.is_shutdown():
        rospy.loginfo("Placing object...")
        pose = PoseStamped()
        pose.pose = cube.primitive_poses[0]
        pose.pose.position.z += 0.05
        pose.header.frame_id = cube.header.frame_id
        if grasping_client.place(cube, pose):
            break
        rospy.logwarn("Placing failed.")



out = grasping_client.get()

print len(out)
no=0
ipdb.set_trace()