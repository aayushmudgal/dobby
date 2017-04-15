# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robot_controllers_msgs: 9 messages, 0 services")

set(MSG_I_FLAGS "-Irobot_controllers_msgs:/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg;-Irobot_controllers_msgs:/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot_controllers_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/DiffDriveLimiterParams.msg" NAME_WE)
add_custom_target(_robot_controllers_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_controllers_msgs" "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/DiffDriveLimiterParams.msg" ""
)

get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesResult.msg" NAME_WE)
add_custom_target(_robot_controllers_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_controllers_msgs" "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesResult.msg" "robot_controllers_msgs/ControllerState"
)

get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesAction.msg" NAME_WE)
add_custom_target(_robot_controllers_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_controllers_msgs" "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesAction.msg" "robot_controllers_msgs/QueryControllerStatesActionResult:robot_controllers_msgs/QueryControllerStatesFeedback:robot_controllers_msgs/ControllerState:robot_controllers_msgs/QueryControllerStatesGoal:actionlib_msgs/GoalStatus:robot_controllers_msgs/QueryControllerStatesActionGoal:robot_controllers_msgs/QueryControllerStatesActionFeedback:std_msgs/Header:actionlib_msgs/GoalID:robot_controllers_msgs/QueryControllerStatesResult"
)

get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionResult.msg" NAME_WE)
add_custom_target(_robot_controllers_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_controllers_msgs" "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:robot_controllers_msgs/ControllerState:robot_controllers_msgs/QueryControllerStatesResult"
)

get_filename_component(_filename "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg" NAME_WE)
add_custom_target(_robot_controllers_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_controllers_msgs" "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg" ""
)

get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesGoal.msg" NAME_WE)
add_custom_target(_robot_controllers_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_controllers_msgs" "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesGoal.msg" "robot_controllers_msgs/ControllerState"
)

get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionFeedback.msg" NAME_WE)
add_custom_target(_robot_controllers_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_controllers_msgs" "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:robot_controllers_msgs/ControllerState:robot_controllers_msgs/QueryControllerStatesFeedback"
)

get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesFeedback.msg" NAME_WE)
add_custom_target(_robot_controllers_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_controllers_msgs" "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesFeedback.msg" "robot_controllers_msgs/ControllerState"
)

get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionGoal.msg" NAME_WE)
add_custom_target(_robot_controllers_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_controllers_msgs" "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:robot_controllers_msgs/ControllerState:robot_controllers_msgs/QueryControllerStatesGoal"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robot_controllers_msgs
  "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/DiffDriveLimiterParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_cpp(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_cpp(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionResult.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesFeedback.msg;/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionGoal.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_cpp(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_cpp(robot_controllers_msgs
  "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_cpp(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_cpp(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_cpp(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_cpp(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_controllers_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(robot_controllers_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_controllers_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot_controllers_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot_controllers_msgs_generate_messages robot_controllers_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/DiffDriveLimiterParams.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_cpp _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesResult.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_cpp _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesAction.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_cpp _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionResult.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_cpp _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_cpp _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesGoal.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_cpp _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionFeedback.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_cpp _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesFeedback.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_cpp _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionGoal.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_cpp _robot_controllers_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_controllers_msgs_gencpp)
add_dependencies(robot_controllers_msgs_gencpp robot_controllers_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_controllers_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robot_controllers_msgs
  "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/DiffDriveLimiterParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_lisp(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_lisp(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionResult.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesFeedback.msg;/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionGoal.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_lisp(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_lisp(robot_controllers_msgs
  "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_lisp(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_lisp(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_lisp(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_lisp(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_controllers_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(robot_controllers_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_controllers_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot_controllers_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot_controllers_msgs_generate_messages robot_controllers_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/DiffDriveLimiterParams.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_lisp _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesResult.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_lisp _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesAction.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_lisp _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionResult.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_lisp _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_lisp _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesGoal.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_lisp _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionFeedback.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_lisp _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesFeedback.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_lisp _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionGoal.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_lisp _robot_controllers_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_controllers_msgs_genlisp)
add_dependencies(robot_controllers_msgs_genlisp robot_controllers_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_controllers_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robot_controllers_msgs
  "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/DiffDriveLimiterParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_py(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_py(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionResult.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesFeedback.msg;/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionGoal.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_py(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_py(robot_controllers_msgs
  "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_py(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_py(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_py(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_controllers_msgs
)
_generate_msg_py(robot_controllers_msgs
  "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg;/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_controllers_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(robot_controllers_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_controllers_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot_controllers_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot_controllers_msgs_generate_messages robot_controllers_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/DiffDriveLimiterParams.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_py _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesResult.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_py _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesAction.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_py _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionResult.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_py _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg/ControllerState.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_py _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesGoal.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_py _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionFeedback.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_py _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesFeedback.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_py _robot_controllers_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg/QueryControllerStatesActionGoal.msg" NAME_WE)
add_dependencies(robot_controllers_msgs_generate_messages_py _robot_controllers_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_controllers_msgs_genpy)
add_dependencies(robot_controllers_msgs_genpy robot_controllers_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_controllers_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_controllers_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_controllers_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(robot_controllers_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robot_controllers_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_controllers_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_controllers_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(robot_controllers_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robot_controllers_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_controllers_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_controllers_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_controllers_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(robot_controllers_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robot_controllers_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
