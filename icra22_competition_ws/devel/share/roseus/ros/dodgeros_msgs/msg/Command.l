;; Auto-generated. Do not edit!


(when (boundp 'dodgeros_msgs::Command)
  (if (not (find-package "DODGEROS_MSGS"))
    (make-package "DODGEROS_MSGS"))
  (shadow 'Command (find-package "DODGEROS_MSGS")))
(unless (find-package "DODGEROS_MSGS::COMMAND")
  (make-package "DODGEROS_MSGS::COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Command.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dodgeros_msgs::Command
  :super ros::object
  :slots (_header _t _is_single_rotor_thrust _collective_thrust _bodyrates _thrusts ))

(defmethod dodgeros_msgs::Command
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:t __t) 0.0)
    ((:is_single_rotor_thrust __is_single_rotor_thrust) nil)
    ((:collective_thrust __collective_thrust) 0.0)
    ((:bodyrates __bodyrates) (instance geometry_msgs::Vector3 :init))
    ((:thrusts __thrusts) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _t (float __t))
   (setq _is_single_rotor_thrust __is_single_rotor_thrust)
   (setq _collective_thrust (float __collective_thrust))
   (setq _bodyrates __bodyrates)
   (setq _thrusts __thrusts)
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
  (:is_single_rotor_thrust
   (&optional (__is_single_rotor_thrust :null))
   (if (not (eq __is_single_rotor_thrust :null)) (setq _is_single_rotor_thrust __is_single_rotor_thrust)) _is_single_rotor_thrust)
  (:collective_thrust
   (&optional __collective_thrust)
   (if __collective_thrust (setq _collective_thrust __collective_thrust)) _collective_thrust)
  (:bodyrates
   (&rest __bodyrates)
   (if (keywordp (car __bodyrates))
       (send* _bodyrates __bodyrates)
     (progn
       (if __bodyrates (setq _bodyrates (car __bodyrates)))
       _bodyrates)))
  (:thrusts
   (&optional __thrusts)
   (if __thrusts (setq _thrusts __thrusts)) _thrusts)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _t
    8
    ;; bool _is_single_rotor_thrust
    1
    ;; float64 _collective_thrust
    8
    ;; geometry_msgs/Vector3 _bodyrates
    (send _bodyrates :serialization-length)
    ;; float64[4] _thrusts
    (* 8    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _t
       (sys::poke _t (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_single_rotor_thrust
       (if _is_single_rotor_thrust (write-byte -1 s) (write-byte 0 s))
     ;; float64 _collective_thrust
       (sys::poke _collective_thrust (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _bodyrates
       (send _bodyrates :serialize s)
     ;; float64[4] _thrusts
     (dotimes (i 4)
       (sys::poke (elt _thrusts i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _t
     (setq _t (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_single_rotor_thrust
     (setq _is_single_rotor_thrust (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _collective_thrust
     (setq _collective_thrust (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _bodyrates
     (send _bodyrates :deserialize buf ptr-) (incf ptr- (send _bodyrates :serialization-length))
   ;; float64[4] _thrusts
   (dotimes (i (length _thrusts))
     (setf (elt _thrusts i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get dodgeros_msgs::Command :md5sum-) "4d577bccd8c13adfb614a4c929e12409")
(setf (get dodgeros_msgs::Command :datatype-) "dodgeros_msgs/Command")
(setf (get dodgeros_msgs::Command :definition-)
      "Header header 

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



(provide :dodgeros_msgs/Command "4d577bccd8c13adfb614a4c929e12409")


