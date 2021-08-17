
(cl:in-package :asdf)

(defsystem "PtoP_traject-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PtoP_traject" :depends-on ("_package_PtoP_traject"))
    (:file "_package_PtoP_traject" :depends-on ("_package"))
  ))