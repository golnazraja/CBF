; Auto-generated. Do not edit!


(cl:in-package dodgeros_msgs-msg)


;//! \htmlinclude RotorFeedbackStamped.msg.html

(cl:defclass <RotorFeedbackStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass RotorFeedbackStamped (<RotorFeedbackStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RotorFeedbackStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RotorFeedbackStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dodgeros_msgs-msg:<RotorFeedbackStamped> is deprecated: use dodgeros_msgs-msg:RotorFeedbackStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RotorFeedbackStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodgeros_msgs-msg:header-val is deprecated.  Use dodgeros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RotorFeedbackStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodgeros_msgs-msg:type-val is deprecated.  Use dodgeros_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <RotorFeedbackStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodgeros_msgs-msg:data-val is deprecated.  Use dodgeros_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RotorFeedbackStamped>)))
    "Constants for message type '<RotorFeedbackStamped>"
  '((:INVALID_TYPE . 0)
    (:THROTTLE_TYPE . 1)
    (:SPEED_TYPE . 2)
    (:THRUST_TYPE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RotorFeedbackStamped)))
    "Constants for message type 'RotorFeedbackStamped"
  '((:INVALID_TYPE . 0)
    (:THROTTLE_TYPE . 1)
    (:SPEED_TYPE . 2)
    (:THRUST_TYPE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RotorFeedbackStamped>) ostream)
  "Serializes a message object of type '<RotorFeedbackStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RotorFeedbackStamped>) istream)
  "Deserializes a message object of type '<RotorFeedbackStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RotorFeedbackStamped>)))
  "Returns string type for a message object of type '<RotorFeedbackStamped>"
  "dodgeros_msgs/RotorFeedbackStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RotorFeedbackStamped)))
  "Returns string type for a message object of type 'RotorFeedbackStamped"
  "dodgeros_msgs/RotorFeedbackStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RotorFeedbackStamped>)))
  "Returns md5sum for a message object of type '<RotorFeedbackStamped>"
  "560b56e6d217d5f5e6727c4defa2f6b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RotorFeedbackStamped)))
  "Returns md5sum for a message object of type 'RotorFeedbackStamped"
  "560b56e6d217d5f5e6727c4defa2f6b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RotorFeedbackStamped>)))
  "Returns full string definition for message of type '<RotorFeedbackStamped>"
  (cl:format cl:nil "Header header~%uint8 type~%float32[] data~%~%uint8 INVALID_TYPE = 0~%uint8 THROTTLE_TYPE = 1~%uint8 SPEED_TYPE = 2~%uint8 THRUST_TYPE = 3~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RotorFeedbackStamped)))
  "Returns full string definition for message of type 'RotorFeedbackStamped"
  (cl:format cl:nil "Header header~%uint8 type~%float32[] data~%~%uint8 INVALID_TYPE = 0~%uint8 THROTTLE_TYPE = 1~%uint8 SPEED_TYPE = 2~%uint8 THRUST_TYPE = 3~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RotorFeedbackStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RotorFeedbackStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'RotorFeedbackStamped
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':data (data msg))
))
