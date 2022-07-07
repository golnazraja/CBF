;; Auto-generated. Do not edit!


(when (boundp 'dodgeros_msgs::Reference)
  (if (not (find-package "DODGEROS_MSGS"))
    (make-package "DODGEROS_MSGS"))
  (shadow 'Reference (find-package "DODGEROS_MSGS")))
(unless (find-package "DODGEROS_MSGS::REFERENCE")
  (make-package "DODGEROS_MSGS::REFERENCE"))

(in-package "ROS")
;;//! \htmlinclude Reference.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dodgeros_msgs::Reference
  :super ros::object
  :slots (_header _points ))

(defmethod dodgeros_msgs::Reference
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:points __points) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _points __points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; dodgeros_msgs/Setpoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; dodgeros_msgs/Setpoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; dodgeros_msgs/Setpoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance dodgeros_msgs::Setpoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dodgeros_msgs::Reference :md5sum-) "e374aa4139d56741a12f70c4fa22044e")
(setf (get dodgeros_msgs::Reference :datatype-) "dodgeros_msgs/Reference")
(setf (get dodgeros_msgs::Reference :definition-)
      "Header header

dodgeros_msgs/Setpoint[] points

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
MSG: dodgeros_msgs/Setpoint
# Angular rates in body frame
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



(provide :dodgeros_msgs/Reference "e374aa4139d56741a12f70c4fa22044e")


