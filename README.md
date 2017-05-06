# DOBBY: Desk Organizing Bot BasicallY


We adapted a portion of the [fetch documentation](http://docs.fetchrobotics.com/gazebo.html)  and [hw1](https://github.com/HumanoidRobotics/HW1/blob/master/part1.md) to start with. 

Pictures Folder: Holds some intermediate Pictures
Stacking_video: Video of DOBBY in Action

Installation Instructions:

- Create a ROS workspace
```
source /opt/ros/indigo/setup.bash 
mkdir -p ~/fetch_ws/src
cd ~/fetch_ws/src 
catkin_init_workspace 
```

- Clone relevant ROS packages
```
git clone https://github.com/fetchrobotics/fetch_ros.git

git clone https://github.com/fetchrobotics/robot_controllers.git

git clone https://github.com/modernAlcibiades/DoB.git

```

- Build packages
```
cd ..
catkin_make
```

- Run set-up

Start Gazebo simulator with the playground:
```
source devel/setup.bash
roslaunch fetch_gazebo playground.launch
```
Wait until the simulator is fully running and then run the demo launch file:
```
source devel/setup.bash
roslaunch fetch_gazebo_demo demo.launch
```

- RVIZ visualization
You can visualize several details about the robot in rviz.
```
source devel/setup.bash
rosrun rviz rviz
```

- Starting the DOBBY Robot
python first_start.py 
This starts the robot for the first time, initialized all the components that are required.

## References
- http://docs.fetchrobotics.com/gazebo.html
- http://wiki.ros.org/agile_grasp
##
Maintainer: Aayush Mudgal 
