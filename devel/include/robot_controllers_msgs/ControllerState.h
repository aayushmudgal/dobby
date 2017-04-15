// Generated by gencpp from file robot_controllers_msgs/ControllerState.msg
// DO NOT EDIT!


#ifndef ROBOT_CONTROLLERS_MSGS_MESSAGE_CONTROLLERSTATE_H
#define ROBOT_CONTROLLERS_MSGS_MESSAGE_CONTROLLERSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_controllers_msgs
{
template <class ContainerAllocator>
struct ControllerState_
{
  typedef ControllerState_<ContainerAllocator> Type;

  ControllerState_()
    : name()
    , type()
    , state(0)  {
    }
  ControllerState_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , type(_alloc)
    , state(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _type_type;
  _type_type type;

   typedef uint8_t _state_type;
  _state_type state;


    enum { STOPPED = 0u };
     enum { RUNNING = 1u };
     enum { ERROR = 2u };
 

  typedef boost::shared_ptr< ::robot_controllers_msgs::ControllerState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_controllers_msgs::ControllerState_<ContainerAllocator> const> ConstPtr;

}; // struct ControllerState_

typedef ::robot_controllers_msgs::ControllerState_<std::allocator<void> > ControllerState;

typedef boost::shared_ptr< ::robot_controllers_msgs::ControllerState > ControllerStatePtr;
typedef boost::shared_ptr< ::robot_controllers_msgs::ControllerState const> ControllerStateConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_controllers_msgs::ControllerState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_controllers_msgs::ControllerState_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robot_controllers_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'robot_controllers_msgs': ['/home/mudgal/fetch_ws/src/robot_controllers/robot_controllers_msgs/msg', '/home/mudgal/fetch_ws/devel/share/robot_controllers_msgs/msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robot_controllers_msgs::ControllerState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_controllers_msgs::ControllerState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_controllers_msgs::ControllerState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_controllers_msgs::ControllerState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_controllers_msgs::ControllerState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_controllers_msgs::ControllerState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_controllers_msgs::ControllerState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "af57e70ba1ab402f75604e58ad260b8f";
  }

  static const char* value(const ::robot_controllers_msgs::ControllerState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaf57e70ba1ab402fULL;
  static const uint64_t static_value2 = 0x75604e58ad260b8fULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_controllers_msgs::ControllerState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_controllers_msgs/ControllerState";
  }

  static const char* value(const ::robot_controllers_msgs::ControllerState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_controllers_msgs::ControllerState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Valid states:\n\
\n\
uint8 STOPPED = 0\n\
uint8 RUNNING = 1\n\
uint8 ERROR = 2\n\
\n\
string name\n\
string type\n\
uint8 state\n\
";
  }

  static const char* value(const ::robot_controllers_msgs::ControllerState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_controllers_msgs::ControllerState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.type);
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ControllerState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_controllers_msgs::ControllerState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_controllers_msgs::ControllerState_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.type);
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_CONTROLLERS_MSGS_MESSAGE_CONTROLLERSTATE_H