
(cl:in-package :asdf)

(defsystem "envsim_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Obstacle" :depends-on ("_package_Obstacle"))
    (:file "_package_Obstacle" :depends-on ("_package"))
    (:file "ObstacleArray" :depends-on ("_package_ObstacleArray"))
    (:file "_package_ObstacleArray" :depends-on ("_package"))
  ))