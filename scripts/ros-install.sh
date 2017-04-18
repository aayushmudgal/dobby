# This is for ros-indigo on 14.04
# note: indigo doesn't work on Ubuntu above 14.04

# Add repositories
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Set up keys
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

# Install ROS
sudo apt-get install ros-indigo-desktop-full

# Initialize ROS dependancies manager
sudo rosdep init
rosdep update

# Environment Setup
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
source ~/.bashrc
#source /opt/ros/indigo/setup.bash

# ROS python tools
sudo apt-get install python-rosinstall
