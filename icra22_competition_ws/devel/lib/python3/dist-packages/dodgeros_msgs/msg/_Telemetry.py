# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dodgeros_msgs/Telemetry.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import dodgeros_msgs.msg
import geometry_msgs.msg
import std_msgs.msg

class Telemetry(genpy.Message):
  _md5sum = "5251574f675e7717477eef1003887d54"
  _type = "dodgeros_msgs/Telemetry"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header

# Time [s]
float64 t

# Bridge
std_msgs/String bridge_type
std_msgs/Bool bridge_armed
std_msgs/Bool guard_triggered

# Reference
int32 num_references_in_queue
float64 reference_left_duration
float64 rmse
dodgeros_msgs/QuadState reference

# Onboard Telemetry
float64 voltage

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Bool
bool data
================================================================================
MSG: dodgeros_msgs/QuadState
Header header

# Time [s]
float64 t

# Pose
geometry_msgs/Pose pose

# Linear & angular velocity
geometry_msgs/Twist velocity

# Linear & angular acceleration
geometry_msgs/Twist acceleration

# Acc bias
geometry_msgs/Vector3 acc_bias

# Gyro bias
geometry_msgs/Vector3 gyr_bias

# Jerk
geometry_msgs/Vector3 jerk

# Snap
geometry_msgs/Vector3 snap

# Motor speeds
float64[] motors

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z"""
  __slots__ = ['header','t','bridge_type','bridge_armed','guard_triggered','num_references_in_queue','reference_left_duration','rmse','reference','voltage']
  _slot_types = ['std_msgs/Header','float64','std_msgs/String','std_msgs/Bool','std_msgs/Bool','int32','float64','float64','dodgeros_msgs/QuadState','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,t,bridge_type,bridge_armed,guard_triggered,num_references_in_queue,reference_left_duration,rmse,reference,voltage

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Telemetry, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.t is None:
        self.t = 0.
      if self.bridge_type is None:
        self.bridge_type = std_msgs.msg.String()
      if self.bridge_armed is None:
        self.bridge_armed = std_msgs.msg.Bool()
      if self.guard_triggered is None:
        self.guard_triggered = std_msgs.msg.Bool()
      if self.num_references_in_queue is None:
        self.num_references_in_queue = 0
      if self.reference_left_duration is None:
        self.reference_left_duration = 0.
      if self.rmse is None:
        self.rmse = 0.
      if self.reference is None:
        self.reference = dodgeros_msgs.msg.QuadState()
      if self.voltage is None:
        self.voltage = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.t = 0.
      self.bridge_type = std_msgs.msg.String()
      self.bridge_armed = std_msgs.msg.Bool()
      self.guard_triggered = std_msgs.msg.Bool()
      self.num_references_in_queue = 0
      self.reference_left_duration = 0.
      self.rmse = 0.
      self.reference = dodgeros_msgs.msg.QuadState()
      self.voltage = 0.

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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.t
      buff.write(_get_struct_d().pack(_x))
      _x = self.bridge_type.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2Bi2d3I().pack(_x.bridge_armed.data, _x.guard_triggered.data, _x.num_references_in_queue, _x.reference_left_duration, _x.rmse, _x.reference.header.seq, _x.reference.header.stamp.secs, _x.reference.header.stamp.nsecs))
      _x = self.reference.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_32d().pack(_x.reference.t, _x.reference.pose.position.x, _x.reference.pose.position.y, _x.reference.pose.position.z, _x.reference.pose.orientation.x, _x.reference.pose.orientation.y, _x.reference.pose.orientation.z, _x.reference.pose.orientation.w, _x.reference.velocity.linear.x, _x.reference.velocity.linear.y, _x.reference.velocity.linear.z, _x.reference.velocity.angular.x, _x.reference.velocity.angular.y, _x.reference.velocity.angular.z, _x.reference.acceleration.linear.x, _x.reference.acceleration.linear.y, _x.reference.acceleration.linear.z, _x.reference.acceleration.angular.x, _x.reference.acceleration.angular.y, _x.reference.acceleration.angular.z, _x.reference.acc_bias.x, _x.reference.acc_bias.y, _x.reference.acc_bias.z, _x.reference.gyr_bias.x, _x.reference.gyr_bias.y, _x.reference.gyr_bias.z, _x.reference.jerk.x, _x.reference.jerk.y, _x.reference.jerk.z, _x.reference.snap.x, _x.reference.snap.y, _x.reference.snap.z))
      length = len(self.reference.motors)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.reference.motors))
      _x = self.voltage
      buff.write(_get_struct_d().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.bridge_type is None:
        self.bridge_type = std_msgs.msg.String()
      if self.bridge_armed is None:
        self.bridge_armed = std_msgs.msg.Bool()
      if self.guard_triggered is None:
        self.guard_triggered = std_msgs.msg.Bool()
      if self.reference is None:
        self.reference = dodgeros_msgs.msg.QuadState()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 8
      (self.t,) = _get_struct_d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.bridge_type.data = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.bridge_type.data = str[start:end]
      _x = self
      start = end
      end += 34
      (_x.bridge_armed.data, _x.guard_triggered.data, _x.num_references_in_queue, _x.reference_left_duration, _x.rmse, _x.reference.header.seq, _x.reference.header.stamp.secs, _x.reference.header.stamp.nsecs,) = _get_struct_2Bi2d3I().unpack(str[start:end])
      self.bridge_armed.data = bool(self.bridge_armed.data)
      self.guard_triggered.data = bool(self.guard_triggered.data)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.reference.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.reference.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 256
      (_x.reference.t, _x.reference.pose.position.x, _x.reference.pose.position.y, _x.reference.pose.position.z, _x.reference.pose.orientation.x, _x.reference.pose.orientation.y, _x.reference.pose.orientation.z, _x.reference.pose.orientation.w, _x.reference.velocity.linear.x, _x.reference.velocity.linear.y, _x.reference.velocity.linear.z, _x.reference.velocity.angular.x, _x.reference.velocity.angular.y, _x.reference.velocity.angular.z, _x.reference.acceleration.linear.x, _x.reference.acceleration.linear.y, _x.reference.acceleration.linear.z, _x.reference.acceleration.angular.x, _x.reference.acceleration.angular.y, _x.reference.acceleration.angular.z, _x.reference.acc_bias.x, _x.reference.acc_bias.y, _x.reference.acc_bias.z, _x.reference.gyr_bias.x, _x.reference.gyr_bias.y, _x.reference.gyr_bias.z, _x.reference.jerk.x, _x.reference.jerk.y, _x.reference.jerk.z, _x.reference.snap.x, _x.reference.snap.y, _x.reference.snap.z,) = _get_struct_32d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.reference.motors = s.unpack(str[start:end])
      start = end
      end += 8
      (self.voltage,) = _get_struct_d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.t
      buff.write(_get_struct_d().pack(_x))
      _x = self.bridge_type.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2Bi2d3I().pack(_x.bridge_armed.data, _x.guard_triggered.data, _x.num_references_in_queue, _x.reference_left_duration, _x.rmse, _x.reference.header.seq, _x.reference.header.stamp.secs, _x.reference.header.stamp.nsecs))
      _x = self.reference.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_32d().pack(_x.reference.t, _x.reference.pose.position.x, _x.reference.pose.position.y, _x.reference.pose.position.z, _x.reference.pose.orientation.x, _x.reference.pose.orientation.y, _x.reference.pose.orientation.z, _x.reference.pose.orientation.w, _x.reference.velocity.linear.x, _x.reference.velocity.linear.y, _x.reference.velocity.linear.z, _x.reference.velocity.angular.x, _x.reference.velocity.angular.y, _x.reference.velocity.angular.z, _x.reference.acceleration.linear.x, _x.reference.acceleration.linear.y, _x.reference.acceleration.linear.z, _x.reference.acceleration.angular.x, _x.reference.acceleration.angular.y, _x.reference.acceleration.angular.z, _x.reference.acc_bias.x, _x.reference.acc_bias.y, _x.reference.acc_bias.z, _x.reference.gyr_bias.x, _x.reference.gyr_bias.y, _x.reference.gyr_bias.z, _x.reference.jerk.x, _x.reference.jerk.y, _x.reference.jerk.z, _x.reference.snap.x, _x.reference.snap.y, _x.reference.snap.z))
      length = len(self.reference.motors)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.reference.motors.tostring())
      _x = self.voltage
      buff.write(_get_struct_d().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.bridge_type is None:
        self.bridge_type = std_msgs.msg.String()
      if self.bridge_armed is None:
        self.bridge_armed = std_msgs.msg.Bool()
      if self.guard_triggered is None:
        self.guard_triggered = std_msgs.msg.Bool()
      if self.reference is None:
        self.reference = dodgeros_msgs.msg.QuadState()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 8
      (self.t,) = _get_struct_d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.bridge_type.data = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.bridge_type.data = str[start:end]
      _x = self
      start = end
      end += 34
      (_x.bridge_armed.data, _x.guard_triggered.data, _x.num_references_in_queue, _x.reference_left_duration, _x.rmse, _x.reference.header.seq, _x.reference.header.stamp.secs, _x.reference.header.stamp.nsecs,) = _get_struct_2Bi2d3I().unpack(str[start:end])
      self.bridge_armed.data = bool(self.bridge_armed.data)
      self.guard_triggered.data = bool(self.guard_triggered.data)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.reference.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.reference.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 256
      (_x.reference.t, _x.reference.pose.position.x, _x.reference.pose.position.y, _x.reference.pose.position.z, _x.reference.pose.orientation.x, _x.reference.pose.orientation.y, _x.reference.pose.orientation.z, _x.reference.pose.orientation.w, _x.reference.velocity.linear.x, _x.reference.velocity.linear.y, _x.reference.velocity.linear.z, _x.reference.velocity.angular.x, _x.reference.velocity.angular.y, _x.reference.velocity.angular.z, _x.reference.acceleration.linear.x, _x.reference.acceleration.linear.y, _x.reference.acceleration.linear.z, _x.reference.acceleration.angular.x, _x.reference.acceleration.angular.y, _x.reference.acceleration.angular.z, _x.reference.acc_bias.x, _x.reference.acc_bias.y, _x.reference.acc_bias.z, _x.reference.gyr_bias.x, _x.reference.gyr_bias.y, _x.reference.gyr_bias.z, _x.reference.jerk.x, _x.reference.jerk.y, _x.reference.jerk.z, _x.reference.snap.x, _x.reference.snap.y, _x.reference.snap.z,) = _get_struct_32d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.reference.motors = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 8
      (self.voltage,) = _get_struct_d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2Bi2d3I = None
def _get_struct_2Bi2d3I():
    global _struct_2Bi2d3I
    if _struct_2Bi2d3I is None:
        _struct_2Bi2d3I = struct.Struct("<2Bi2d3I")
    return _struct_2Bi2d3I
_struct_32d = None
def _get_struct_32d():
    global _struct_32d
    if _struct_32d is None:
        _struct_32d = struct.Struct("<32d")
    return _struct_32d
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_d = None
def _get_struct_d():
    global _struct_d
    if _struct_d is None:
        _struct_d = struct.Struct("<d")
    return _struct_d
