execute_process(COMMAND "/home/mudgal/fetch_ws/build/robot_controllers/robot_controllers/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/mudgal/fetch_ws/build/robot_controllers/robot_controllers/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
