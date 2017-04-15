# Install script for directory: /media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/src/fetch_gazebo/fetch_gazebo

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/build/fetch_gazebo/fetch_gazebo/catkin_generated/installspace/fetch_gazebo.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fetch_gazebo/cmake" TYPE FILE FILES
    "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/build/fetch_gazebo/fetch_gazebo/catkin_generated/installspace/fetch_gazeboConfig.cmake"
    "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/build/fetch_gazebo/fetch_gazebo/catkin_generated/installspace/fetch_gazeboConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fetch_gazebo" TYPE FILE FILES "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/src/fetch_gazebo/fetch_gazebo/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfetch_gazebo_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfetch_gazebo_plugin.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfetch_gazebo_plugin.so"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/devel/lib/libfetch_gazebo_plugin.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfetch_gazebo_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfetch_gazebo_plugin.so")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfetch_gazebo_plugin.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfetch_gazebo_plugin.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/fetch_gazebo" TYPE PROGRAM FILES
    "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/src/fetch_gazebo/fetch_gazebo/scripts/prepare_simulated_robot.py"
    "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/src/fetch_gazebo/fetch_gazebo/scripts/prepare_simulated_robot_pick_place.py"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fetch_gazebo" TYPE DIRECTORY FILES
    "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/src/fetch_gazebo/fetch_gazebo/config"
    "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/src/fetch_gazebo/fetch_gazebo/include"
    "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/src/fetch_gazebo/fetch_gazebo/launch"
    "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/src/fetch_gazebo/fetch_gazebo/robots"
    "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/src/fetch_gazebo/fetch_gazebo/worlds"
    "/media/kruppe/1e0a5b1d-281d-40a6-8ca8-095201d10cc2/Work/columbia/HumanoidRobots/fetch_ws/src/fetch_gazebo/fetch_gazebo/models"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

