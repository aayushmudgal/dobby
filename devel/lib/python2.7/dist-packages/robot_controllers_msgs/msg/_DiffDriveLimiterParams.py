# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robot_controllers_msgs/DiffDriveLimiterParams.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class DiffDriveLimiterParams(genpy.Message):
  _md5sum = "c438ebbdf2d3d45fdfb67f5ba9e6ca3d"
  _type = "robot_controllers_msgs/DiffDriveLimiterParams"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Various parameters for diff driver base velocity and acceleration limiter
# This message allows limits that would imposed by diff_drive_base
# to be understood by other components without needing access to 
# same set of rosparams, or URDF settings

float64 max_linear_velocity
float64 max_linear_acceleration

float64 max_angular_velocity
float64 max_angular_acceleration

# Wheel velocity limit are linear velocity (m/s) not angular velocities (rad/s)
float64 max_wheel_velocity

# distance between two wheels 
# used for calculating wheel velocities from angular velocity
float64 track_width

# If true limiter will reduce linear velocity
# when angular velocity is beyond limit so
# so path curvature is maintained
bool angular_velocity_limits_linear_velocity

# If true, linear and angular velocities will 
# scaled if wheel velocities beyond limits
# so path curvature is maintained
# otherwise wheel velocities are limited independently
bool scale_to_wheel_velocity_limits
"""
  __slots__ = ['max_linear_velocity','max_linear_acceleration','max_angular_velocity','max_angular_acceleration','max_wheel_velocity','track_width','angular_velocity_limits_linear_velocity','scale_to_wheel_velocity_limits']
  _slot_types = ['float64','float64','float64','float64','float64','float64','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       max_linear_velocity,max_linear_acceleration,max_angular_velocity,max_angular_acceleration,max_wheel_velocity,track_width,angular_velocity_limits_linear_velocity,scale_to_wheel_velocity_limits

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DiffDriveLimiterParams, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.max_linear_velocity is None:
        self.max_linear_velocity = 0.
      if self.max_linear_acceleration is None:
        self.max_linear_acceleration = 0.
      if self.max_angular_velocity is None:
        self.max_angular_velocity = 0.
      if self.max_angular_acceleration is None:
        self.max_angular_acceleration = 0.
      if self.max_wheel_velocity is None:
        self.max_wheel_velocity = 0.
      if self.track_width is None:
        self.track_width = 0.
      if self.angular_velocity_limits_linear_velocity is None:
        self.angular_velocity_limits_linear_velocity = False
      if self.scale_to_wheel_velocity_limits is None:
        self.scale_to_wheel_velocity_limits = False
    else:
      self.max_linear_velocity = 0.
      self.max_linear_acceleration = 0.
      self.max_angular_velocity = 0.
      self.max_angular_acceleration = 0.
      self.max_wheel_velocity = 0.
      self.track_width = 0.
      self.angular_velocity_limits_linear_velocity = False
      self.scale_to_wheel_velocity_limits = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_6d2B.pack(_x.max_linear_velocity, _x.max_linear_acceleration, _x.max_angular_velocity, _x.max_angular_acceleration, _x.max_wheel_velocity, _x.track_width, _x.angular_velocity_limits_linear_velocity, _x.scale_to_wheel_velocity_limits))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 50
      (_x.max_linear_velocity, _x.max_linear_acceleration, _x.max_angular_velocity, _x.max_angular_acceleration, _x.max_wheel_velocity, _x.track_width, _x.angular_velocity_limits_linear_velocity, _x.scale_to_wheel_velocity_limits,) = _struct_6d2B.unpack(str[start:end])
      self.angular_velocity_limits_linear_velocity = bool(self.angular_velocity_limits_linear_velocity)
      self.scale_to_wheel_velocity_limits = bool(self.scale_to_wheel_velocity_limits)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_6d2B.pack(_x.max_linear_velocity, _x.max_linear_acceleration, _x.max_angular_velocity, _x.max_angular_acceleration, _x.max_wheel_velocity, _x.track_width, _x.angular_velocity_limits_linear_velocity, _x.scale_to_wheel_velocity_limits))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 50
      (_x.max_linear_velocity, _x.max_linear_acceleration, _x.max_angular_velocity, _x.max_angular_acceleration, _x.max_wheel_velocity, _x.track_width, _x.angular_velocity_limits_linear_velocity, _x.scale_to_wheel_velocity_limits,) = _struct_6d2B.unpack(str[start:end])
      self.angular_velocity_limits_linear_velocity = bool(self.angular_velocity_limits_linear_velocity)
      self.scale_to_wheel_velocity_limits = bool(self.scale_to_wheel_velocity_limits)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_6d2B = struct.Struct("<6d2B")
