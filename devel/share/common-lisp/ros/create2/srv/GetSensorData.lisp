; Auto-generated. Do not edit!


(cl:in-package create2-srv)


;//! \htmlinclude GetSensorData-request.msg.html

(cl:defclass <GetSensorData-request> (roslisp-msg-protocol:ros-message)
  ((sensor
    :reader sensor
    :initarg :sensor
    :type cl:integer
    :initform 0))
)

(cl:defclass GetSensorData-request (<GetSensorData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSensorData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSensorData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name create2-srv:<GetSensorData-request> is deprecated: use create2-srv:GetSensorData-request instead.")))

(cl:ensure-generic-function 'sensor-val :lambda-list '(m))
(cl:defmethod sensor-val ((m <GetSensorData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create2-srv:sensor-val is deprecated.  Use create2-srv:sensor instead.")
  (sensor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSensorData-request>) ostream)
  "Serializes a message object of type '<GetSensorData-request>"
  (cl:let* ((signed (cl:slot-value msg 'sensor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSensorData-request>) istream)
  "Deserializes a message object of type '<GetSensorData-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSensorData-request>)))
  "Returns string type for a service object of type '<GetSensorData-request>"
  "create2/GetSensorDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSensorData-request)))
  "Returns string type for a service object of type 'GetSensorData-request"
  "create2/GetSensorDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSensorData-request>)))
  "Returns md5sum for a message object of type '<GetSensorData-request>"
  "535d4181008ab13e5aec6269c2d71cb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSensorData-request)))
  "Returns md5sum for a message object of type 'GetSensorData-request"
  "535d4181008ab13e5aec6269c2d71cb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSensorData-request>)))
  "Returns full string definition for message of type '<GetSensorData-request>"
  (cl:format cl:nil "int64 sensor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSensorData-request)))
  "Returns full string definition for message of type 'GetSensorData-request"
  (cl:format cl:nil "int64 sensor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSensorData-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSensorData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSensorData-request
    (cl:cons ':sensor (sensor msg))
))
;//! \htmlinclude GetSensorData-response.msg.html

(cl:defclass <GetSensorData-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetSensorData-response (<GetSensorData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSensorData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSensorData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name create2-srv:<GetSensorData-response> is deprecated: use create2-srv:GetSensorData-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetSensorData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader create2-srv:data-val is deprecated.  Use create2-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSensorData-response>) ostream)
  "Serializes a message object of type '<GetSensorData-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSensorData-response>) istream)
  "Deserializes a message object of type '<GetSensorData-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSensorData-response>)))
  "Returns string type for a service object of type '<GetSensorData-response>"
  "create2/GetSensorDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSensorData-response)))
  "Returns string type for a service object of type 'GetSensorData-response"
  "create2/GetSensorDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSensorData-response>)))
  "Returns md5sum for a message object of type '<GetSensorData-response>"
  "535d4181008ab13e5aec6269c2d71cb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSensorData-response)))
  "Returns md5sum for a message object of type 'GetSensorData-response"
  "535d4181008ab13e5aec6269c2d71cb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSensorData-response>)))
  "Returns full string definition for message of type '<GetSensorData-response>"
  (cl:format cl:nil "string[] data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSensorData-response)))
  "Returns full string definition for message of type 'GetSensorData-response"
  (cl:format cl:nil "string[] data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSensorData-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSensorData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSensorData-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSensorData)))
  'GetSensorData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSensorData)))
  'GetSensorData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSensorData)))
  "Returns string type for a service object of type '<GetSensorData>"
  "create2/GetSensorData")