; Auto-generated. Do not edit!


(cl:in-package dodgeros_msgs-msg)


;//! \htmlinclude Reference.msg.html

(cl:defclass <Reference> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (points
    :reader points
    :initarg :points
    :type (cl:vector dodgeros_msgs-msg:Setpoint)
   :initform (cl:make-array 0 :element-type 'dodgeros_msgs-msg:Setpoint :initial-element (cl:make-instance 'dodgeros_msgs-msg:Setpoint))))
)

(cl:defclass Reference (<Reference>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reference>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reference)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dodgeros_msgs-msg:<Reference> is deprecated: use dodgeros_msgs-msg:Reference instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Reference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodgeros_msgs-msg:header-val is deprecated.  Use dodgeros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Reference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodgeros_msgs-msg:points-val is deprecated.  Use dodgeros_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reference>) ostream)
  "Serializes a message object of type '<Reference>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reference>) istream)
  "Deserializes a message object of type '<Reference>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dodgeros_msgs-msg:Setpoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reference>)))
  "Returns string type for a message object of type '<Reference>"
  "dodgeros_msgs/Reference")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reference)))
  "Returns string type for a message object of type 'Reference"
  "dodgeros_msgs/Reference")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reference>)))
  "Returns md5sum for a message object of type '<Reference>"
  "e374aa4139d56741a12f70c4fa22044e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reference)))
  "Returns md5sum for a message object of type 'Reference"
  "e374aa4139d56741a12f70c4fa22044e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reference>)))
  "Returns full string definition for message of type '<Reference>"
  (cl:format cl:nil "Header header~%~%dodgeros_msgs/Setpoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dodgeros_msgs/Setpoint~%# Angular rates in body frame~%dodgeros_msgs/QuadState state~%~%# Single rotor thrusts~%dodgeros_msgs/Command command~%~%================================================================================~%MSG: dodgeros_msgs/QuadState~%Header header~%~%# Time [s]~%float64 t~%~%# Pose~%geometry_msgs/Pose pose~%~%# Linear & angular velocity~%geometry_msgs/Twist velocity~%~%# Linear & angular acceleration~%geometry_msgs/Twist acceleration~%~%# Acc bias~%geometry_msgs/Vector3 acc_bias~%~%# Gyro bias~%geometry_msgs/Vector3 gyr_bias~%~%# Jerk~%geometry_msgs/Vector3 jerk~%~%# Snap~%geometry_msgs/Vector3 snap~%~%# Motor speeds~%float64[] motors~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: dodgeros_msgs/Command~%Header header ~%~%# Time [s]~%float64 t~%~%# If input is in terms of collective thrust & bodyrates or single rotor thrusts~%bool is_single_rotor_thrust~%~%# Collective mass-normalized thrust [m/s^2]~%float64 collective_thrust~%~%# Angular rates in body frame [rad/s]~%geometry_msgs/Vector3 bodyrates~%~%# Single rotor thrusts [N]~%float64[4] thrusts~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reference)))
  "Returns full string definition for message of type 'Reference"
  (cl:format cl:nil "Header header~%~%dodgeros_msgs/Setpoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dodgeros_msgs/Setpoint~%# Angular rates in body frame~%dodgeros_msgs/QuadState state~%~%# Single rotor thrusts~%dodgeros_msgs/Command command~%~%================================================================================~%MSG: dodgeros_msgs/QuadState~%Header header~%~%# Time [s]~%float64 t~%~%# Pose~%geometry_msgs/Pose pose~%~%# Linear & angular velocity~%geometry_msgs/Twist velocity~%~%# Linear & angular acceleration~%geometry_msgs/Twist acceleration~%~%# Acc bias~%geometry_msgs/Vector3 acc_bias~%~%# Gyro bias~%geometry_msgs/Vector3 gyr_bias~%~%# Jerk~%geometry_msgs/Vector3 jerk~%~%# Snap~%geometry_msgs/Vector3 snap~%~%# Motor speeds~%float64[] motors~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: dodgeros_msgs/Command~%Header header ~%~%# Time [s]~%float64 t~%~%# If input is in terms of collective thrust & bodyrates or single rotor thrusts~%bool is_single_rotor_thrust~%~%# Collective mass-normalized thrust [m/s^2]~%float64 collective_thrust~%~%# Angular rates in body frame [rad/s]~%geometry_msgs/Vector3 bodyrates~%~%# Single rotor thrusts [N]~%float64[4] thrusts~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reference>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reference>))
  "Converts a ROS message object to a list"
  (cl:list 'Reference
    (cl:cons ':header (header msg))
    (cl:cons ':points (points msg))
))
