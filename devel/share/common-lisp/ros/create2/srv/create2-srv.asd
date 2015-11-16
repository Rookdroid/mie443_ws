
(cl:in-package :asdf)

(defsystem "create2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Drive" :depends-on ("_package_Drive"))
    (:file "_package_Drive" :depends-on ("_package"))
    (:file "GetSensorData" :depends-on ("_package_GetSensorData"))
    (:file "_package_GetSensorData" :depends-on ("_package"))
  ))