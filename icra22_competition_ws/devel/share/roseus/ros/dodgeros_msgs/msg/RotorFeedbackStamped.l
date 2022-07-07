;; Auto-generated. Do not edit!


(when (boundp 'dodgeros_msgs::RotorFeedbackStamped)
  (if (not (find-package "DODGEROS_MSGS"))
    (make-package "DODGEROS_MSGS"))
  (shadow 'RotorFeedbackStamped (find-package "DODGEROS_MSGS")))
(unless (find-package "DODGEROS_MSGS::ROTORFEEDBACKSTAMPED")
  (make-package "DODGEROS_MSGS::ROTORFEEDBACKSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude RotorFeedbackStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*INVALID_TYPE*" (find-package "DODGEROS_MSGS::ROTORFEEDBACKSTAMPED"))
(shadow '*INVALID_TYPE* (find-package "DODGEROS_MSGS::ROTORFEEDBACKSTAMPED"))
(defconstant dodgeros_msgs::RotorFeedbackStamped::*INVALID_TYPE* 0)
(intern "*THROTTLE_TYPE*" (find-package "DODGEROS_MSGS::ROTORFEEDBACKSTAMPED"))
(shadow '*THROTTLE_TYPE* (find-package "DODGEROS_MSGS::ROTORFEEDBACKSTAMPED"))
(defconstant dodgeros_msgs::RotorFeedbackStamped::*THROTTLE_TYPE* 1)
(intern "*SPEED_TYPE*" (find-package "DODGEROS_MSGS::ROTORFEEDBACKSTAMPED"))
(shadow '*SPEED_TYPE* (find-package "DODGEROS_MSGS::ROTORFEEDBACKSTAMPED"))
(defconstant dodgeros_msgs::RotorFeedbackStamped::*SPEED_TYPE* 2)
(intern "*THRUST_TYPE*" (find-package "DODGEROS_MSGS::ROTORFEEDBACKSTAMPED"))
(shadow '*THRUST_TYPE* (find-package "DODGEROS_MSGS::ROTORFEEDBACKSTAMPED"))
(defconstant dodgeros_msgs::RotorFeedbackStamped::*THRUST_TYPE* 3)

(defun dodgeros_msgs::RotorFeedbackStamped-to-symbol (const)
  (cond
        ((= const 0) 'dodgeros_msgs::RotorFeedbackStamped::*INVALID_TYPE*)
        ((= const 1) 'dodgeros_msgs::RotorFeedbackStamped::*THROTTLE_TYPE*)
        ((= const 2) 'dodgeros_msgs::RotorFeedbackStamped::*SPEED_TYPE*)
        ((= const 3) 'dodgeros_msgs::RotorFeedbackStamped::*THRUST_TYPE*)
        (t nil)))

(defclass dodgeros_msgs::RotorFeedbackStamped
  :super ros::object
  :slots (_header _type _data ))

(defmethod dodgeros_msgs::RotorFeedbackStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) 0)
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (round __type))
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _type
    1
    ;; float32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _type
       (write-byte _type s)
     ;; float32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get dodgeros_msgs::RotorFeedbackStamped :md5sum-) "560b56e6d217d5f5e6727c4defa2f6b7")
(setf (get dodgeros_msgs::RotorFeedbackStamped :datatype-) "dodgeros_msgs/RotorFeedbackStamped")
(setf (get dodgeros_msgs::RotorFeedbackStamped :definition-)
      "Header header
uint8 type
float32[] data

uint8 INVALID_TYPE = 0
uint8 THROTTLE_TYPE = 1
uint8 SPEED_TYPE = 2
uint8 THRUST_TYPE = 3

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

")



(provide :dodgeros_msgs/RotorFeedbackStamped "560b56e6d217d5f5e6727c4defa2f6b7")


