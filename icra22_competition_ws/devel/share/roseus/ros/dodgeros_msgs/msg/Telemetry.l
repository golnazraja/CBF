;; Auto-generated. Do not edit!


(when (boundp 'dodgeros_msgs::Telemetry)
  (if (not (find-package "DODGEROS_MSGS"))
    (make-package "DODGEROS_MSGS"))
  (shadow 'Telemetry (find-package "DODGEROS_MSGS")))
(unless (find-package "DODGEROS_MSGS::TELEMETRY")
  (make-package "DODGEROS_MSGS::TELEMETRY"))

(in-package "ROS")
;;//! \htmlinclude Telemetry.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dodgeros_msgs::Telemetry
  :super ros::object
  :slots (_header _t _bridge_type _bridge_armed _guard_triggered _num_references_in_queue _reference_left_duration _rmse _reference _voltage ))

(defmethod dodgeros_msgs::Telemetry
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:t __t) 0.0)
    ((:bridge_type __bridge_type) (instance std_msgs::String :init))
    ((:bridge_armed __bridge_armed) (instance std_msgs::Bool :init))
    ((:guard_triggered __guard_triggered) (instance std_msgs::Bool :init))
    ((:num_references_in_queue __num_references_in_queue) 0)
    ((:reference_left_duration __reference_left_duration) 0.0)
    ((:rmse __rmse) 0.0)
    ((:reference __reference) (instance dodgeros_msgs::QuadState :init))
    ((:voltage __voltage) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _t (float __t))
   (setq _bridge_type __bridge_type)
   (setq _bridge_armed __bridge_armed)
   (setq _guard_triggered __guard_triggered)
   (setq _num_references_in_queue (round __num_references_in_queue))
   (setq _reference_left_duration (float __reference_left_duration))
   (setq _rmse (float __rmse))
   (setq _reference __reference)
   (setq _voltage (float __voltage))
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
  (:bridge_type
   (&rest __bridge_type)
   (if (keywordp (car __bridge_type))
       (send* _bridge_type __bridge_type)
     (progn
       (if __bridge_type (setq _bridge_type (car __bridge_type)))
       _bridge_type)))
  (:bridge_armed
   (&rest __bridge_armed)
   (if (keywordp (car __bridge_armed))
       (send* _bridge_armed __bridge_armed)
     (progn
       (if __bridge_armed (setq _bridge_armed (car __bridge_armed)))
       _bridge_armed)))
  (:guard_triggered
   (&rest __guard_triggered)
   (if (keywordp (car __guard_triggered))
       (send* _guard_triggered __guard_triggered)
     (progn
       (if __guard_triggered (setq _guard_triggered (car __guard_triggered)))
       _guard_triggered)))
  (:num_references_in_queue
   (&optional __num_references_in_queue)
   (if __num_references_in_queue (setq _num_references_in_queue __num_references_in_queue)) _num_references_in_queue)
  (:reference_left_duration
   (&optional __reference_left_duration)
   (if __reference_left_duration (setq _reference_left_duration __reference_left_duration)) _reference_left_duration)
  (:rmse
   (&optional __rmse)
   (if __rmse (setq _rmse __rmse)) _rmse)
  (:reference
   (&rest __reference)
   (if (keywordp (car __reference))
       (send* _reference __reference)
     (progn
       (if __reference (setq _reference (car __reference)))
       _reference)))
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _t
    8
    ;; std_msgs/String _bridge_type
    (send _bridge_type :serialization-length)
    ;; std_msgs/Bool _bridge_armed
    (send _bridge_armed :serialization-length)
    ;; std_msgs/Bool _guard_triggered
    (send _guard_triggered :serialization-length)
    ;; int32 _num_references_in_queue
    4
    ;; float64 _reference_left_duration
    8
    ;; float64 _rmse
    8
    ;; dodgeros_msgs/QuadState _reference
    (send _reference :serialization-length)
    ;; float64 _voltage
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _t
       (sys::poke _t (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; std_msgs/String _bridge_type
       (send _bridge_type :serialize s)
     ;; std_msgs/Bool _bridge_armed
       (send _bridge_armed :serialize s)
     ;; std_msgs/Bool _guard_triggered
       (send _guard_triggered :serialize s)
     ;; int32 _num_references_in_queue
       (write-long _num_references_in_queue s)
     ;; float64 _reference_left_duration
       (sys::poke _reference_left_duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rmse
       (sys::poke _rmse (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; dodgeros_msgs/QuadState _reference
       (send _reference :serialize s)
     ;; float64 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _t
     (setq _t (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; std_msgs/String _bridge_type
     (send _bridge_type :deserialize buf ptr-) (incf ptr- (send _bridge_type :serialization-length))
   ;; std_msgs/Bool _bridge_armed
     (send _bridge_armed :deserialize buf ptr-) (incf ptr- (send _bridge_armed :serialization-length))
   ;; std_msgs/Bool _guard_triggered
     (send _guard_triggered :deserialize buf ptr-) (incf ptr- (send _guard_triggered :serialization-length))
   ;; int32 _num_references_in_queue
     (setq _num_references_in_queue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _reference_left_duration
     (setq _reference_left_duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rmse
     (setq _rmse (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; dodgeros_msgs/QuadState _reference
     (send _reference :deserialize buf ptr-) (incf ptr- (send _reference :serialization-length))
   ;; float64 _voltage
     (setq _voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get dodgeros_msgs::Telemetry :md5sum-) "5251574f675e7717477eef1003887d54")
(setf (get dodgeros_msgs::Telemetry :datatype-) "dodgeros_msgs/Telemetry")
(setf (get dodgeros_msgs::Telemetry :definition-)
      "Header header

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
float64 z
")



(provide :dodgeros_msgs/Telemetry "5251574f675e7717477eef1003887d54")


