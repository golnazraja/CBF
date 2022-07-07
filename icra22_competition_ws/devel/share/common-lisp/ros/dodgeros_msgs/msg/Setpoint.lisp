; Auto-generated. Do not edit!


(cl:in-package dodgeros_msgs-msg)


;//! \htmlinclude Setpoint.msg.html

(cl:defclass <Setpoint> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type dodgeros_msgs-msg:QuadState
    :initform (cl:make-instance 'dodgeros_msgs-msg:QuadState))
   (command
    :reader command
    :initarg :command
    :type dodgeros_msgs-msg:Command
    :initform (cl:make-instance 'dodgeros_msgs-msg:Command)))
)

(cl:defclass Setpoint (<Setpoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Setpoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Setpoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dodgeros_msgs-msg:<Setpoint> is deprecated: use dodgeros_msgs-msg:Setpoint instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Setpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodgeros_msgs-msg:state-val is deprecated.  Use dodgeros_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <Setpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodgeros_msgs-msg:command-val is deprecated.  Use dodgeros_msgs-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Setpoint>) ostream)
  "Serializes a message object of type '<Setpoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'command) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Setpoint>) istream)
  "Deserializes a message object of type '<Setpoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'command) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Setpoint>)))
  "Returns string type for a message object of type '<Setpoint>"
  "dodgeros_msgs/Setpoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Setpoint)))
  "Returns string type for a message object of type 'Setpoint"
  "dodgeros_msgs/Setpoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Setpoint>)))
  "Returns md5sum for a message object of type '<Setpoint>"
  "7664ff7a9a9bd8a5486517df47844f44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Setpoint)))
  "Returns md5sum for a message object of type 'Setpoint"
  "7664ff7a9a9bd8a5486517df47844f44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Setpoint>)))
  "Returns full string definition for message of type '<Setpoint>"
  (cl:format cl:nil "# Angular rates in body frame~%dodgeros_msgs/QuadState state~%~%# Single rotor thrusts~%dodgeros_msgs/Command command~%~%================================================================================~%MSG: dodgeros_msgs/QuadState~%Header header~%~%# Time [s]~%float64 t~%~%# Pose~%geometry_msgs/Pose pose~%~%# Linear & angular velocity~%geometry_msgs/Twist velocity~%~%# Linear & angular acceleration~%geometry_msgs/Twist acceleration~%~%# Acc bias~%geometry_msgs/Vector3 acc_bias~%~%# Gyro bias~%geometry_msgs/Vector3 gyr_bias~%~%# Jerk~%geometry_msgs/Vector3 jerk~%~%# Snap~%geometry_msgs/Vector3 snap~%~%# Motor speeds~%float64[] motors~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: dodgeros_msgs/Command~%Header header ~%~%# Time [s]~%float64 t~%~%# If input is in terms of collective thrust & bodyrates or single rotor thrusts~%bool is_single_rotor_thrust~%~%# Collective mass-normalized thrust [m/s^2]~%float64 collective_thrust~%~%# Angular rates in body frame [rad/s]~%geometry_msgs/Vector3 bodyrates~%~%# Single rotor thrusts [N]~%float64[4] thrusts~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Setpoint)))
  "Returns full string definition for message of type 'Setpoint"
  (cl:format cl:nil "# Angular rates in body frame~%dodgeros_msgs/QuadState state~%~%# Single rotor thrusts~%dodgeros_msgs/Command command~%~%================================================================================~%MSG: dodgeros_msgs/QuadState~%Header header~%~%# Time [s]~%float64 t~%~%# Pose~%geometry_msgs/Pose pose~%~%# Linear & angular velocity~%geometry_msgs/Twist velocity~%~%# Linear & angular acceleration~%geometry_msgs/Twist acceleration~%~%# Acc bias~%geometry_msgs/Vector3 acc_bias~%~%# Gyro bias~%geometry_msgs/Vector3 gyr_bias~%~%# Jerk~%geometry_msgs/Vector3 jerk~%~%# Snap~%geometry_msgs/Vector3 snap~%~%# Motor speeds~%float64[] motors~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: dodgeros_msgs/Command~%Header header ~%~%# Time [s]~%float64 t~%~%# If input is in terms of collective thrust & bodyrates or single rotor thrusts~%bool is_single_rotor_thrust~%~%# Collective mass-normalized thrust [m/s^2]~%float64 collective_thrust~%~%# Angular rates in body frame [rad/s]~%geometry_msgs/Vector3 bodyrates~%~%# Single rotor thrusts [N]~%float64[4] thrusts~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Setpoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Setpoint>))
  "Converts a ROS message object to a list"
  (cl:list 'Setpoint
    (cl:cons ':state (state msg))
    (cl:cons ':command (command msg))
))
