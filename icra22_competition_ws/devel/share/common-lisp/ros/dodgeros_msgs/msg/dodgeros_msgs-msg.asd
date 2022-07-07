
(cl:in-package :asdf)

(defsystem "dodgeros_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Command" :depends-on ("_package_Command"))
    (:file "_package_Command" :depends-on ("_package"))
    (:file "DebugMsg" :depends-on ("_package_DebugMsg"))
    (:file "_package_DebugMsg" :depends-on ("_package"))
    (:file "QuadState" :depends-on ("_package_QuadState"))
    (:file "_package_QuadState" :depends-on ("_package"))
    (:file "Reference" :depends-on ("_package_Reference"))
    (:file "_package_Reference" :depends-on ("_package"))
    (:file "RotorFeedbackStamped" :depends-on ("_package_RotorFeedbackStamped"))
    (:file "_package_RotorFeedbackStamped" :depends-on ("_package"))
    (:file "Setpoint" :depends-on ("_package_Setpoint"))
    (:file "_package_Setpoint" :depends-on ("_package"))
    (:file "Telemetry" :depends-on ("_package_Telemetry"))
    (:file "_package_Telemetry" :depends-on ("_package"))
    (:file "UInt8Stamped" :depends-on ("_package_UInt8Stamped"))
    (:file "_package_UInt8Stamped" :depends-on ("_package"))
  ))