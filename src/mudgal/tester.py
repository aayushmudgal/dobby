from demo_init import *
rospy.init_node("demo")

# Make sure sim time is working
while not rospy.Time.now():
    pass

# Setup clients
move_base = MoveBaseClient()
torso_action = FollowTrajectoryClient("torso_controller", ["torso_lift_joint"])
head_action = PointHeadClient()
grasping_client = GraspingClient()


move_base.goto(0.94,0,0)

# Move the base to be in front of the table
# Demonstrates the use of the navigation stack
rospy.loginfo("Moving to table...")

rospy.loginfo("Raising torso...")
torso_action.move_to([0.4, ])

# Point the head at the cube we want to pick
head_action.look_at(2, 0, 0.15, "map")

# Get block to pick
out = grasping_client.get()
if len(out)==1:
    print "Perception failed"
else:
    flag, cube, grasps = out
# while not rospy.is_shutdown():
#     rospy.loginfo("Picking object...")
#     get = grasping_client.get()
#     if get =="Perception Failed":
#         continue
#     if get:
#         break
#     rospy.logwarn("Grasping failed.")

# Tuck the arm
grasping_client.tuck()

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

  # <arg name="x" default="1.750" />
  # <arg name="y" default="3.118" />
  # <arg name="z" default="0.0" />
# Place the block
# while not rospy.is_shutdown():
#     rospy.loginfo("Placing object...")


grasping_client.put(cube, -0.05,-0.05,0.05)

    # rospy.logwarn("Placing failed.")


# Tuck the arm, lower the torso
grasping_client.tuck()
torso_action.move_to([0.0, ])