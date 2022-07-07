;; Auto-generated. Do not edit!


(when (boundp 'dodgeros_msgs::Setpoint)
  (if (not (find-package "DODGEROS_MSGS"))
    (make-package "DODGEROS_MSGS"))
  (shadow 'Setpoint (find-package "DODGEROS_MSGS")))
(unless (find-package "DODGEROS_MSGS::SETPOINT")
  (make-package "DODGEROS_MSGS::SETPOINT"))

(in-package "ROS")
;;//! \htmlinclude Setpoint.msg.html


(defclass dodgeros_msgs::Setpoint
  :super ros::object
  :slots (_state _command ))

(defmethod dodgeros_msgs::Setpoint
  (:init
   (&key
    ((:state __state) (instance dodgeros_msgs::QuadState :init))
    ((:command __command) (instance dodgeros_msgs::Command :init))
    )
   (send-super :init)
   (setq _state __state)
   (setq _command __command)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:command
   (&rest __command)
   (if (keywordp (car __command))
       (send* _command __command)
     (progn
       (if __command (setq _command (car __command)))
       _command)))
  (:serialization-length
   ()
   (+
    ;; dodgeros_msgs/QuadState _state
    (send _state :serialization-length)
    ;; dodgeros_msgs/Command _command
    (send _command :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dodgeros_msgs/QuadState _state
       (send _state :serialize s)
     ;; dodgeros_msgs/Command _command
       (send _command :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dodgeros_msgs/QuadState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; dodgeros_msgs/Command _command
     (send _command :deserialize buf ptr-) (incf ptr- (send _command :serialization-length))
   ;;
   self)
  )

(setf (get dodgeros_msgs::Setpoint :md5sum-) "7664ff7a9a9bd8a5486517df47844f44")
(setf (get dodgeros_msgs::Setpoint :datatype-) "dodgeros_msgs/Setpoint")
(setf (get dodgeros_msgs::Setpoint :definition-)
      "# Angular rates in body frame
dodgeros_msgs/QuadState state

# Single rotor thrusts
dodgeros_msgs/Command command

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
float64 z
================================================================================
MSG: dodgeros_msgs/Command
Header header 

# Time [s]
float64 t

# If input is in terms of collective thrust & bodyrates or single rotor thrusts
bool is_single_rotor_thrust

# Collective mass-normalized thrust [m/s^2]
float64 collective_thrust

# Angular rates in body frame [rad/s]
geometry_msgs/Vector3 bodyrates

# Single rotor thrusts [N]
float64[4] thrusts

")



(provide :dodgeros_msgs/Setpoint "7664ff7a9a9bd8a5486517df47844f44")


