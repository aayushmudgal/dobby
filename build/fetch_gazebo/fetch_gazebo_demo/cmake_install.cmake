# Install script for directory: /media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/src/fetch_gazebo/fetch_gazebo_demo

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/build/fetch_gazebo/fetch_gazebo_demo/catkin_generated/installspace/fetch_gazebo_demo.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fetch_gazebo_demo/cmake" TYPE FILE FILES
    "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/build/fetch_gazebo/fetch_gazebo_demo/catkin_generated/installspace/fetch_gazebo_demoConfig.cmake"
    "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/build/fetch_gazebo/fetch_gazebo_demo/catkin_generated/installspace/fetch_gazebo_demoConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fetch_gazebo_demo" TYPE FILE FILES "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/src/fetch_gazebo/fetch_gazebo_demo/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/fetch_gazebo_demo" TYPE PROGRAM FILES
    "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/src/fetch_gazebo/fetch_gazebo_demo/scripts/demo.py"
    "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/src/fetch_gazebo/fetch_gazebo_demo/scripts/pick_place_demo.py"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fetch_gazebo_demo" TYPE DIRECTORY FILES
    "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/src/fetch_gazebo/fetch_gazebo_demo/launch"
    "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/src/fetch_gazebo/fetch_gazebo_demo/maps"
    "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/src/fetch_gazebo/fetch_gazebo_demo/config"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

