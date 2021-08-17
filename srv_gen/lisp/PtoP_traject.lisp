; Auto-generated. Do not edit!


(cl:in-package PtoP_traject-srv)


;//! \htmlinclude PtoP_traject-request.msg.html

(cl:defclass <PtoP_traject-request> (roslisp-msg-protocol:ros-message)
  ((point1
    :reader point1
    :initarg :point1
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (point2
    :reader point2
    :initarg :point2
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass PtoP_traject-request (<PtoP_traject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PtoP_traject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PtoP_traject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name PtoP_traject-srv:<PtoP_traject-request> is deprecated: use PtoP_traject-srv:PtoP_traject-request instead.")))

(cl:ensure-generic-function 'point1-val :lambda-list '(m))
(cl:defmethod point1-val ((m <PtoP_traject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader PtoP_traject-srv:point1-val is deprecated.  Use PtoP_traject-srv:point1 instead.")
  (point1 m))

(cl:ensure-generic-function 'point2-val :lambda-list '(m))
(cl:defmethod point2-val ((m <PtoP_traject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader PtoP_traject-srv:point2-val is deprecated.  Use PtoP_traject-srv:point2 instead.")
  (point2 m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <PtoP_traject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader PtoP_traject-srv:count-val is deprecated.  Use PtoP_traject-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PtoP_traject-request>) ostream)
  "Serializes a message object of type '<PtoP_traject-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'point1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'point1))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'point2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'point2))
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PtoP_traject-request>) istream)
  "Deserializes a message object of type '<PtoP_traject-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'point1) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'point1)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'point2) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'point2)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PtoP_traject-request>)))
  "Returns string type for a service object of type '<PtoP_traject-request>"
  "PtoP_traject/PtoP_trajectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PtoP_traject-request)))
  "Returns string type for a service object of type 'PtoP_traject-request"
  "PtoP_traject/PtoP_trajectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PtoP_traject-request>)))
  "Returns md5sum for a message object of type '<PtoP_traject-request>"
  "8197c829520272ad70dbf7b7299eea4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PtoP_traject-request)))
  "Returns md5sum for a message object of type 'PtoP_traject-request"
  "8197c829520272ad70dbf7b7299eea4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PtoP_traject-request>)))
  "Returns full string definition for message of type '<PtoP_traject-request>"
  (cl:format cl:nil "float64[] point1~%float64[] point2~%int32      count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PtoP_traject-request)))
  "Returns full string definition for message of type 'PtoP_traject-request"
  (cl:format cl:nil "float64[] point1~%float64[] point2~%int32      count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PtoP_traject-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'point1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'point2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PtoP_traject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PtoP_traject-request
    (cl:cons ':point1 (point1 msg))
    (cl:cons ':point2 (point2 msg))
    (cl:cons ':count (count msg))
))
;//! \htmlinclude PtoP_traject-response.msg.html

(cl:defclass <PtoP_traject-response> (roslisp-msg-protocol:ros-message)
  ((jointq
    :reader jointq
    :initarg :jointq
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PtoP_traject-response (<PtoP_traject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PtoP_traject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PtoP_traject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name PtoP_traject-srv:<PtoP_traject-response> is deprecated: use PtoP_traject-srv:PtoP_traject-response instead.")))

(cl:ensure-generic-function 'jointq-val :lambda-list '(m))
(cl:defmethod jointq-val ((m <PtoP_traject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader PtoP_traject-srv:jointq-val is deprecated.  Use PtoP_traject-srv:jointq instead.")
  (jointq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PtoP_traject-response>) ostream)
  "Serializes a message object of type '<PtoP_traject-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'jointq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'jointq))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PtoP_traject-response>) istream)
  "Deserializes a message object of type '<PtoP_traject-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'jointq) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'jointq)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PtoP_traject-response>)))
  "Returns string type for a service object of type '<PtoP_traject-response>"
  "PtoP_traject/PtoP_trajectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PtoP_traject-response)))
  "Returns string type for a service object of type 'PtoP_traject-response"
  "PtoP_traject/PtoP_trajectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PtoP_traject-response>)))
  "Returns md5sum for a message object of type '<PtoP_traject-response>"
  "8197c829520272ad70dbf7b7299eea4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PtoP_traject-response)))
  "Returns md5sum for a message object of type 'PtoP_traject-response"
  "8197c829520272ad70dbf7b7299eea4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PtoP_traject-response>)))
  "Returns full string definition for message of type '<PtoP_traject-response>"
  (cl:format cl:nil "float64[] jointq~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PtoP_traject-response)))
  "Returns full string definition for message of type 'PtoP_traject-response"
  (cl:format cl:nil "float64[] jointq~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PtoP_traject-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'jointq) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PtoP_traject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PtoP_traject-response
    (cl:cons ':jointq (jointq msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PtoP_traject)))
  'PtoP_traject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PtoP_traject)))
  'PtoP_traject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PtoP_traject)))
  "Returns string type for a service object of type '<PtoP_traject>"
  "PtoP_traject/PtoP_traject")