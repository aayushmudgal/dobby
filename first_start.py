import ipdb
from demo_init import *
rospy.init_node("demo")
STACK = False
x_update = 0.009
y_update = 0.009
z_update = 0.05

def pick_object(out,no):
  return out[no][0], out[no][1] 
# Make sure sim time is working
while not rospy.Time.now():
    pass

# Setup clients
move_base = MoveBaseClient()
torso_action = FollowTrajectoryClient("torso_controller", ["torso_lift_joint"])
head_action = PointHeadClient()
grasping_client = GraspingClient()


move_base.goto(0.925,0,0)

# Move the base to be in front of the table
# Demonstrates the use of the navigation stack
rospy.loginfo("Moving to table...")

rospy.loginfo("Raising torso...")
torso_action.move_to([0.4, ])

# Point the head at the cube we want to pick
head_action.look_at(2, 0, 0.15, "map")
flag = 0
out = 1
total_placed = 0
while(1):
  iteration = 0
  while not rospy.is_shutdown():
          rospy.loginfo("Picking object...")        
          cube_grasps = grasping_client.get()
          ipdb.set_trace()
          if len(cube_grasps)==0:
            # found nothing, tuck maybe?

            if flag ==1:
              # had already tucked
              rospy.loginfo("Reachable Workspace looks clean")
              out = 1
              break
            grasping_client.tuck()
            flag = 1
            rospy.loginfo("Tucking back as didn't see any object")
            continue
          flag = 0
          if cube_grasps[0][0] == None:
              rospy.logwarn("Perception failed.")
              continue
          
          if grasping_client.pick(cube_grasps[0][0],cube_grasps[0][1]):
              iteration=0
              out = 0
              break
          rospy.logwarn("Grasping failed.")
          iteration += 1
          if iteration == 3:
              grasping_client.tuck()
              rospy.loginfo("Tried 3 attempts No success, Trying to tuck, and restart the process")
              iteration = 0
  if out ==1:
    # well done bot
    break
  if out == 0:
    # need to place the block
    iteration = 0
    while not rospy.is_shutdown():
      if STACK == False:
        z_update = 0.05
      else:
        if total_placed == 0:
          z_update = 0.05
        else:
          z_update += 0.01
        if grasping_client.put(cube_grasps[0][0], x_update, y_update, z_update):
          rospy.loginfo("Successful Place on iteration "+str(iteration))
          iteration= 0
          grasping_client.tuck()
          break
        rospy.loginfo("Place didn't succeeed")

      iteration+=1
      if iteration == 3:
        grasping_client.tuck()
        rospy.loginfo("Tried 3 attempts for place No success, Trying to tuck, and restart the process")
        iteration = 0

print "Complete"
# # Get block to pick
# out = grasping_client.get()
# ipdb.set_trace()
# if len(out)==1:
#     print "Perception failed"
# else:
#     flag, cube, grasps = out
# while not rospy.is_shutdown():
#     rospy.loginfo("Picking object...")
#     get = grasping_client.get()
#     if get =="Perception Failed":
#         continue
#     if get:
#         break
#     rospy.logwarn("Grasping failed.")

# # Tuck the arm
# grasping_client.tuck()

# # # Lower torso
# # rospy.loginfo("Lowering torso...")
# # torso_action.move_to([0.0, ])

# # # Move to second table
# # rospy.loginfo("Moving to second table...")
# # move_base.goto(-3.53, 3.75, 1.57)
# # move_base.goto(-3.53, 4.15, 1.57)

# # # Raise the torso using just a controller
# # rospy.loginfo("Raising torso...")
# # torso_action.move_to([0.4, ])

#   # <arg name="x" default="1.750" />
#   # <arg name="y" default="3.118" />
#   # <arg name="z" default="0.0" />
# # Place the block
# # while not rospy.is_shutdown():
# #     rospy.loginfo("Placing object...")


# grasping_client.put(out[1], -0.2,-0.15,0.05)

#     # rospy.logwarn("Placing failed.")


# # Tuck the arm, lower the torso
# grasping_client.tuck()
# torso_action.move_to([0.0, ])