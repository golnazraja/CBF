;; Auto-generated. Do not edit!


(when (boundp 'dodgeros_msgs::QuadState)
  (if (not (find-package "DODGEROS_MSGS"))
    (make-package "DODGEROS_MSGS"))
  (shadow 'QuadState (find-package "DODGEROS_MSGS")))
(unless (find-package "DODGEROS_MSGS::QUADSTATE")
  (make-package "DODGEROS_MSGS::QUADSTATE"))

(in-package "ROS")
;;//! \htmlinclude QuadState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dodgeros_msgs::QuadState
  :super ros::object
  :slots (_header _t _pose _velocity _acceleration _acc_bias _gyr_bias _jerk _snap _motors ))

(defmethod dodgeros_msgs::QuadState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:t __t) 0.0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Twist :init))
    ((:acc_bias __acc_bias) (instance geometry_msgs::Vector3 :init))
    ((:gyr_bias __gyr_bias) (instance geometry_msgs::Vector3 :init))
    ((:jerk __jerk) (instance geometry_msgs::Vector3 :init))
    ((:snap __snap) (instance geometry_msgs::Vector3 :init))
    ((:motors __motors) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _t (float __t))
   (setq _pose __pose)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _acc_bias __acc_bias)
   (setq _gyr_bias __gyr_bias)
   (setq _jerk __jerk)
   (setq _snap __snap)
   (setq _motors __motors)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:acc_bias
   (&rest __acc_bias)
   (if (keywordp (car __acc_bias))
       (send* _acc_bias __acc_bias)
     (progn
       (if __acc_bias (setq _acc_bias (car __acc_bias)))
       _acc_bias)))
  (:gyr_bias
   (&rest __gyr_bias)
   (if (keywordp (car __gyr_bias))
       (send* _gyr_bias __gyr_bias)
     (progn
       (if __gyr_bias (setq _gyr_bias (car __gyr_bias)))
       _gyr_bias)))
  (:jerk
   (&rest __jerk)
   (if (keywordp (car __jerk))
       (send* _jerk __jerk)
     (progn
       (if __jerk (setq _jerk (car __jerk)))
       _jerk)))
  (:snap
   (&rest __snap)
   (if (keywordp (car __snap))
       (send* _snap __snap)
     (progn
       (if __snap (setq _snap (car __snap)))
       _snap)))
  (:motors
   (&optional __motors)
   (if __motors (setq _motors __motors)) _motors)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _t
    8
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Twist _acceleration
    (send _acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _acc_bias
    (send _acc_bias :serialization-length)
    ;; geometry_msgs/Vector3 _gyr_bias
    (send _gyr_bias :serialization-length)
    ;; geometry_msgs/Vector3 _jerk
    (send _jerk :serialization-length)
    ;; geometry_msgs/Vector3 _snap
    (send _snap :serialization-length)
    ;; float64[] _motors
    (* 8    (length _motors)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _t
       (sys::poke _t (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Twist _acceleration
       (send _acceleration :serialize s)
     ;; geometry_msgs/Vector3 _acc_bias
       (send _acc_bias :serialize s)
     ;; geometry_msgs/Vector3 _gyr_bias
       (send _gyr_bias :serialize s)
     ;; geometry_msgs/Vector3 _jerk
       (send _jerk :serialize s)
     ;; geometry_msgs/Vector3 _snap
       (send _snap :serialize s)
     ;; float64[] _motors
     (write-long (length _motors) s)
     (dotimes (i (length _motors))
       (sys::poke (elt _motors i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _t
     (setq _t (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Twist _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _acc_bias
     (send _acc_bias :deserialize buf ptr-) (incf ptr- (send _acc_bias :serialization-length))
   ;; geometry_msgs/Vector3 _gyr_bias
     (send _gyr_bias :deserialize buf ptr-) (incf ptr- (send _gyr_bias :serialization-length))
   ;; geometry_msgs/Vector3 _jerk
     (send _jerk :deserialize buf ptr-) (incf ptr- (send _jerk :serialization-length))
   ;; geometry_msgs/Vector3 _snap
     (send _snap :deserialize buf ptr-) (incf ptr- (send _snap :serialization-length))
   ;; float64[] _motors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motors (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motors i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get dodgeros_msgs::QuadState :md5sum-) "64abc96085c98da0b390e079b723be37")
(setf (get dodgeros_msgs::QuadState :datatype-) "dodgeros_msgs/QuadState")
(setf (get dodgeros_msgs::QuadState :definition-)
      "Header header

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
")



(provide :dodgeros_msgs/QuadState "64abc96085c98da0b390e079b723be37")


