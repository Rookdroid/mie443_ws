; Auto-generated. Do not edit!


(cl:in-package create2-srv)


;//! \htmlinclude Drive-request.msg.html

(cl:defclass <Drive-request> (roslisp-msg-protocol:ros-message)
  ((vel_left
    :reader vel_left
    :initarg :vel_left
    :type cl:integer
    :initform 0)
   (vel_right
    :reader vel_right
    :initarg :vel_right
    :type cl:integer
    :initform 0))
)

(cl:defclass Drive-request (<Drive-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Drive-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Drive-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name create2-srv:<Drive-request> is deprecated: use create2-srv:Drive-request instead.")))

(cl:ensure-generic-function 'vel_left-val :lambda-list '(m))
(cl:defmethod vel_left-val ((m <Drive-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create2-srv:vel_left-val is deprecated.  Use create2-srv:vel_left instead.")
  (vel_left m))

(cl:ensure-generic-function 'vel_right-val :lambda-list '(m))
(cl:defmethod vel_right-val ((m <Drive-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create2-srv:vel_right-val is deprecated.  Use create2-srv:vel_right instead.")
  (vel_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Drive-request>) ostream)
  "Serializes a message object of type '<Drive-request>"
  (cl:let* ((signed (cl:slot-value msg 'vel_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vel_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Drive-request>) istream)
  "Deserializes a message object of type '<Drive-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vel_left) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vel_right) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Drive-request>)))
  "Returns string type for a service object of type '<Drive-request>"
  "create2/DriveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Drive-request)))
  "Returns string type for a service object of type 'Drive-request"
  "create2/DriveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Drive-request>)))
  "Returns md5sum for a message object of type '<Drive-request>"
  "c1e1509c2c9a269182b065592cbba0a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Drive-request)))
  "Returns md5sum for a message object of type 'Drive-request"
  "c1e1509c2c9a269182b065592cbba0a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Drive-request>)))
  "Returns full string definition for message of type '<Drive-request>"
  (cl:format cl:nil "int64 vel_left~%int64 vel_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Drive-request)))
  "Returns full string definition for message of type 'Drive-request"
  (cl:format cl:nil "int64 vel_left~%int64 vel_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Drive-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Drive-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Drive-request
    (cl:cons ':vel_left (vel_left msg))
    (cl:cons ':vel_right (vel_right msg))
))
;//! \htmlinclude Drive-response.msg.html

(cl:defclass <Drive-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Drive-response (<Drive-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Drive-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Drive-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name create2-srv:<Drive-response> is deprecated: use create2-srv:Drive-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Drive-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create2-srv:message-val is deprecated.  Use create2-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Drive-response>) ostream)
  "Serializes a message object of type '<Drive-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Drive-response>) istream)
  "Deserializes a message object of type '<Drive-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Drive-response>)))
  "Returns string type for a service object of type '<Drive-response>"
  "create2/DriveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Drive-response)))
  "Returns string type for a service object of type 'Drive-response"
  "create2/DriveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Drive-response>)))
  "Returns md5sum for a message object of type '<Drive-response>"
  "c1e1509c2c9a269182b065592cbba0a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Drive-response)))
  "Returns md5sum for a message object of type 'Drive-response"
  "c1e1509c2c9a269182b065592cbba0a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Drive-response>)))
  "Returns full string definition for message of type '<Drive-response>"
  (cl:format cl:nil "string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Drive-response)))
  "Returns full string definition for message of type 'Drive-response"
  (cl:format cl:nil "string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Drive-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Drive-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Drive-response
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Drive)))
  'Drive-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Drive)))
  'Drive-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Drive)))
  "Returns string type for a service object of type '<Drive>"
  "create2/Drive")