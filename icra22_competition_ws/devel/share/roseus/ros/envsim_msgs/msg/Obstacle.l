;; Auto-generated. Do not edit!


(when (boundp 'envsim_msgs::Obstacle)
  (if (not (find-package "ENVSIM_MSGS"))
    (make-package "ENVSIM_MSGS"))
  (shadow 'Obstacle (find-package "ENVSIM_MSGS")))
(unless (find-package "ENVSIM_MSGS::OBSTACLE")
  (make-package "ENVSIM_MSGS::OBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude Obstacle.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass envsim_msgs::Obstacle
  :super ros::object
  :slots (_position _scale ))

(defmethod envsim_msgs::Obstacle
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:scale __scale) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _scale (float __scale))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:scale
   (&optional __scale)
   (if __scale (setq _scale __scale)) _scale)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; float64 _scale
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; float64 _scale
       (sys::poke _scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _scale
     (setq _scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get envsim_msgs::Obstacle :md5sum-) "08acace3eb15d64f642c494163931d7c")
(setf (get envsim_msgs::Obstacle :datatype-) "envsim_msgs/Obstacle")
(setf (get envsim_msgs::Obstacle :definition-)
      "# Position of obstacle
geometry_msgs/Vector3 position

# Scale of obstacle
float64 scale

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



(provide :envsim_msgs/Obstacle "08acace3eb15d64f642c494163931d7c")


