// Generated by gencpp from file create2/Drive.msg
// DO NOT EDIT!


#ifndef CREATE2_MESSAGE_DRIVE_H
#define CREATE2_MESSAGE_DRIVE_H

#include <ros/service_traits.h>


#include <create2/DriveRequest.h>
#include <create2/DriveResponse.h>


namespace create2
{

struct Drive
{

typedef DriveRequest Request;
typedef DriveResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Drive
} // namespace create2


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::create2::Drive > {
  static const char* value()
  {
    return "c1e1509c2c9a269182b065592cbba0a1";
  }

  static const char* value(const ::create2::Drive&) { return value(); }
};

template<>
struct DataType< ::create2::Drive > {
  static const char* value()
  {
    return "create2/Drive";
  }

  static const char* value(const ::create2::Drive&) { return value(); }
};


// service_traits::MD5Sum< ::create2::DriveRequest> should match 
// service_traits::MD5Sum< ::create2::Drive > 
template<>
struct MD5Sum< ::create2::DriveRequest>
{
  static const char* value()
  {
    return MD5Sum< ::create2::Drive >::value();
  }
  static const char* value(const ::create2::DriveRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::create2::DriveRequest> should match 
// service_traits::DataType< ::create2::Drive > 
template<>
struct DataType< ::create2::DriveRequest>
{
  static const char* value()
  {
    return DataType< ::create2::Drive >::value();
  }
  static const char* value(const ::create2::DriveRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::create2::DriveResponse> should match 
// service_traits::MD5Sum< ::create2::Drive > 
template<>
struct MD5Sum< ::create2::DriveResponse>
{
  static const char* value()
  {
    return MD5Sum< ::create2::Drive >::value();
  }
  static const char* value(const ::create2::DriveResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::create2::DriveResponse> should match 
// service_traits::DataType< ::create2::Drive > 
template<>
struct DataType< ::create2::DriveResponse>
{
  static const char* value()
  {
    return DataType< ::create2::Drive >::value();
  }
  static const char* value(const ::create2::DriveResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CREATE2_MESSAGE_DRIVE_H
