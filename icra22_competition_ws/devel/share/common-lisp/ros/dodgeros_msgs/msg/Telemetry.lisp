; Auto-generated. Do not edit!


(cl:in-package dodgeros_msgs-msg)


;//! \htmlinclude Telemetry.msg.html

(cl:defclass <Telemetry> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (t
    :reader t
    :initarg :t
    :type cl:float
    :initform 0.0)
   (bridge_type
    :reader bridge_type
    :initarg :bridge_type
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (bridge_armed
    :reader bridge_armed
    :initarg :bridge_armed
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (guard_triggered
    :reader guard_triggered
    :initarg :guard_triggered
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (num_references_in_queue
    :reader num_references_in_queue
    :initarg :num_references_in_queue
    :type cl:integer
    :initform 0)
   (reference_left_duration
    :reader reference_left_duration
    :initarg :reference_left_duration
    :type cl:float
    :initform 0.0)
   (rmse
    :reader rmse
    :initarg :rmse
    :type cl:float
    :initform 0.0)
   (reference
    :reader reference
    :initarg :reference
    :type dodgeros_msgs-msg:QuadState
    :initform (cl:make-instance 'dodgeros_msgs-msg:QuadState))
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0))
)

(cl:defclass Telemetry (<Telemetry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Telemetry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Telemetry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dodgeros_msgs-msg:<Telemetry> is deprecated: use dodgeros_msgs-msg:Telemetry instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodgeros_msgs-msg:header-val is deprecated.  Use dodgeros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 't-val :lambda-list '(m))
(cl:defmethod t-val ((m <Telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodgeros_msgs-msg:t-val is deprecated.  Use dodgeros_msgs-msg:t instead.")
  (t m))

(cl:ensure-generic-function 'bridge_type-val :lambda-list '(m))
(cl:defmethod bridge_type-val ((m <Telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodgeros_msgs-msg:bridge_type-val is deprecated.  Use dodgeros_msgs-msg:bridge_type instead.")
  (bridge_type m))

(cl:ensure-generic-function 'bridge_armed-val :lambda-list '(m))
(cl:defmethod bridge_armed-val ((m <Telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodgeros_msgs-msg:bridge_armed-val is deprecated.  Use dodgeros_msgs-msg:bridge_armed instead.")
  (bridge_armed m))

(cl:ensure-generic-function 'guard_triggered-val :lambda-list '(m))
(cl:defmethod guard_triggered-val ((m <Telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodgeros_msgs-msg:guard_triggered-val is deprecated.  Use dodgeros_msgs-msg:guard_triggered instead.")
  (guard_triggered m))

(cl:ensure-generic-function 'num_references_in_queue-val :lambda-list '(m))
(cl:defmethod num_references_in_queue-val ((m <Telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodgeros_msgs-msg:num_references_in_queue-val is deprecated.  Use dodgeros_msgs-msg:num_references_in_queue instead.")
  (num_references_in_queue m))

(cl:ensure-generic-function 'reference_left_duration-val :lambda-list '(m))
(cl:defmethod reference_left_duration-val ((m <Telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodgeros_msgs-msg:reference_left_duration-val is deprecated.  Use dodgeros_msgs-msg:reference_left_duration instead.")
  (reference_left_duration m))

(cl:ensure-generic-function 'rmse-val :lambda-list '(m))
(cl:defmethod rmse-val ((m <Telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodgeros_msgs-msg:rmse-val is deprecated.  Use dodgeros_msgs-msg:rmse instead.")
  (rmse m))

(cl:ensure-generic-function 'reference-val :lambda-list '(m))
(cl:defmethod reference-val ((m <Telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodgeros_msgs-msg:reference-val is deprecated.  Use dodgeros_msgs-msg:reference instead.")
  (reference m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <Telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodgeros_msgs-msg:voltage-val is deprecated.  Use dodgeros_msgs-msg:voltage instead.")
  (voltage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Telemetry>) ostream)
  "Serializes a message object of type '<Telemetry>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 't))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bridge_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bridge_armed) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'guard_triggered) ostream)
  (cl:let* ((signed (cl:slot-value msg 'num_references_in_queue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'reference_left_duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rmse))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Telemetry>) istream)
  "Deserializes a message object of type '<Telemetry>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bridge_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bridge_armed) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'guard_triggered) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_references_in_queue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reference_left_duration) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rmse) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Telemetry>)))
  "Returns string type for a message object of type '<Telemetry>"
  "dodgeros_msgs/Telemetry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Telemetry)))
  "Returns string type for a message object of type 'Telemetry"
  "dodgeros_msgs/Telemetry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Telemetry>)))
  "Returns md5sum for a message object of type '<Telemetry>"
  "5251574f675e7717477eef1003887d54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Telemetry)))
  "Returns md5sum for a message object of type 'Telemetry"
  "5251574f675e7717477eef1003887d54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Telemetry>)))
  "Returns full string definition for message of type '<Telemetry>"
  (cl:format cl:nil "Header header~%~%# Time [s]~%float64 t~%~%# Bridge~%std_msgs/String bridge_type~%std_msgs/Bool bridge_armed~%std_msgs/Bool guard_triggered~%~%# Reference~%int32 num_references_in_queue~%float64 reference_left_duration~%float64 rmse~%dodgeros_msgs/QuadState reference~%~%# Onboard Telemetry~%float64 voltage~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: dodgeros_msgs/QuadState~%Header header~%~%# Time [s]~%float64 t~%~%# Pose~%geometry_msgs/Pose pose~%~%# Linear & angular velocity~%geometry_msgs/Twist velocity~%~%# Linear & angular acceleration~%geometry_msgs/Twist acceleration~%~%# Acc bias~%geometry_msgs/Vector3 acc_bias~%~%# Gyro bias~%geometry_msgs/Vector3 gyr_bias~%~%# Jerk~%geometry_msgs/Vector3 jerk~%~%# Snap~%geometry_msgs/Vector3 snap~%~%# Motor speeds~%float64[] motors~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Telemetry)))
  "Returns full string definition for message of type 'Telemetry"
  (cl:format cl:nil "Header header~%~%# Time [s]~%float64 t~%~%# Bridge~%std_msgs/String bridge_type~%std_msgs/Bool bridge_armed~%std_msgs/Bool guard_triggered~%~%# Reference~%int32 num_references_in_queue~%float64 reference_left_duration~%float64 rmse~%dodgeros_msgs/QuadState reference~%~%# Onboard Telemetry~%float64 voltage~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: dodgeros_msgs/QuadState~%Header header~%~%# Time [s]~%float64 t~%~%# Pose~%geometry_msgs/Pose pose~%~%# Linear & angular velocity~%geometry_msgs/Twist velocity~%~%# Linear & angular acceleration~%geometry_msgs/Twist acceleration~%~%# Acc bias~%geometry_msgs/Vector3 acc_bias~%~%# Gyro bias~%geometry_msgs/Vector3 gyr_bias~%~%# Jerk~%geometry_msgs/Vector3 jerk~%~%# Snap~%geometry_msgs/Vector3 snap~%~%# Motor speeds~%float64[] motors~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Telemetry>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bridge_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bridge_armed))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'guard_triggered))
     4
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Telemetry>))
  "Converts a ROS message object to a list"
  (cl:list 'Telemetry
    (cl:cons ':header (header msg))
    (cl:cons ':t (t msg))
    (cl:cons ':bridge_type (bridge_type msg))
    (cl:cons ':bridge_armed (bridge_armed msg))
    (cl:cons ':guard_triggered (guard_triggered msg))
    (cl:cons ':num_references_in_queue (num_references_in_queue msg))
    (cl:cons ':reference_left_duration (reference_left_duration msg))
    (cl:cons ':rmse (rmse msg))
    (cl:cons ':reference (reference msg))
    (cl:cons ':voltage (voltage msg))
))
