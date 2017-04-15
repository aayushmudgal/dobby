; Auto-generated. Do not edit!


(cl:in-package robot_controllers_msgs-msg)


;//! \htmlinclude QueryControllerStatesResult.msg.html

(cl:defclass <QueryControllerStatesResult> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type (cl:vector robot_controllers_msgs-msg:ControllerState)
   :initform (cl:make-array 0 :element-type 'robot_controllers_msgs-msg:ControllerState :initial-element (cl:make-instance 'robot_controllers_msgs-msg:ControllerState))))
)

(cl:defclass QueryControllerStatesResult (<QueryControllerStatesResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryControllerStatesResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryControllerStatesResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_controllers_msgs-msg:<QueryControllerStatesResult> is deprecated: use robot_controllers_msgs-msg:QueryControllerStatesResult instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <QueryControllerStatesResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_controllers_msgs-msg:state-val is deprecated.  Use robot_controllers_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryControllerStatesResult>) ostream)
  "Serializes a message object of type '<QueryControllerStatesResult>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryControllerStatesResult>) istream)
  "Deserializes a message object of type '<QueryControllerStatesResult>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robot_controllers_msgs-msg:ControllerState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryControllerStatesResult>)))
  "Returns string type for a message object of type '<QueryControllerStatesResult>"
  "robot_controllers_msgs/QueryControllerStatesResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryControllerStatesResult)))
  "Returns string type for a message object of type 'QueryControllerStatesResult"
  "robot_controllers_msgs/QueryControllerStatesResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryControllerStatesResult>)))
  "Returns md5sum for a message object of type '<QueryControllerStatesResult>"
  "95b3426d59527deffe501158443b26c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryControllerStatesResult)))
  "Returns md5sum for a message object of type 'QueryControllerStatesResult"
  "95b3426d59527deffe501158443b26c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryControllerStatesResult>)))
  "Returns full string definition for message of type '<QueryControllerStatesResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Action result:~%# The state of ALL controllers~%ControllerState[] state~%~%================================================================================~%MSG: robot_controllers_msgs/ControllerState~%# Valid states:~%~%uint8 STOPPED = 0~%uint8 RUNNING = 1~%uint8 ERROR = 2~%~%string name~%string type~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryControllerStatesResult)))
  "Returns full string definition for message of type 'QueryControllerStatesResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Action result:~%# The state of ALL controllers~%ControllerState[] state~%~%================================================================================~%MSG: robot_controllers_msgs/ControllerState~%# Valid states:~%~%uint8 STOPPED = 0~%uint8 RUNNING = 1~%uint8 ERROR = 2~%~%string name~%string type~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryControllerStatesResult>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryControllerStatesResult>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryControllerStatesResult
    (cl:cons ':state (state msg))
))