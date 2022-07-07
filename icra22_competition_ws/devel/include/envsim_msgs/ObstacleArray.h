// Generated by gencpp from file envsim_msgs/ObstacleArray.msg
// DO NOT EDIT!


#ifndef ENVSIM_MSGS_MESSAGE_OBSTACLEARRAY_H
#define ENVSIM_MSGS_MESSAGE_OBSTACLEARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <envsim_msgs/Obstacle.h>

namespace envsim_msgs
{
template <class ContainerAllocator>
struct ObstacleArray_
{
  typedef ObstacleArray_<ContainerAllocator> Type;

  ObstacleArray_()
    : header()
    , t(0.0)
    , num(0)
    , obstacles()  {
    }
  ObstacleArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , t(0.0)
    , num(0)
    , obstacles(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _t_type;
  _t_type t;

   typedef int64_t _num_type;
  _num_type num;

   typedef std::vector< ::envsim_msgs::Obstacle_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::envsim_msgs::Obstacle_<ContainerAllocator> >::other >  _obstacles_type;
  _obstacles_type obstacles;





  typedef boost::shared_ptr< ::envsim_msgs::ObstacleArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::envsim_msgs::ObstacleArray_<ContainerAllocator> const> ConstPtr;

}; // struct ObstacleArray_

typedef ::envsim_msgs::ObstacleArray_<std::allocator<void> > ObstacleArray;

typedef boost::shared_ptr< ::envsim_msgs::ObstacleArray > ObstacleArrayPtr;
typedef boost::shared_ptr< ::envsim_msgs::ObstacleArray const> ObstacleArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::envsim_msgs::ObstacleArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::envsim_msgs::ObstacleArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::envsim_msgs::ObstacleArray_<ContainerAllocator1> & lhs, const ::envsim_msgs::ObstacleArray_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.t == rhs.t &&
    lhs.num == rhs.num &&
    lhs.obstacles == rhs.obstacles;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::envsim_msgs::ObstacleArray_<ContainerAllocator1> & lhs, const ::envsim_msgs::ObstacleArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace envsim_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::envsim_msgs::ObstacleArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::envsim_msgs::ObstacleArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::envsim_msgs::ObstacleArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::envsim_msgs::ObstacleArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::envsim_msgs::ObstacleArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::envsim_msgs::ObstacleArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::envsim_msgs::ObstacleArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bd0aaa8dcccee2c85f7639a6e5892c91";
  }

  static const char* value(const ::envsim_msgs::ObstacleArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbd0aaa8dcccee2c8ULL;
  static const uint64_t static_value2 = 0x5f7639a6e5892c91ULL;
};

template<class ContainerAllocator>
struct DataType< ::envsim_msgs::ObstacleArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "envsim_msgs/ObstacleArray";
  }

  static const char* value(const ::envsim_msgs::ObstacleArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::envsim_msgs::ObstacleArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header \n"
"\n"
"# Time [s]\n"
"float64 t\n"
"\n"
"# Number of obstacles in message\n"
"int64 num\n"
"\n"
"# Obstacle array\n"
"envsim_msgs/Obstacle[] obstacles\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: envsim_msgs/Obstacle\n"
"# Position of obstacle\n"
"geometry_msgs/Vector3 position\n"
"\n"
"# Scale of obstacle\n"
"float64 scale\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::envsim_msgs::ObstacleArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::envsim_msgs::ObstacleArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.t);
      stream.next(m.num);
      stream.next(m.obstacles);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObstacleArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::envsim_msgs::ObstacleArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::envsim_msgs::ObstacleArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "t: ";
    Printer<double>::stream(s, indent + "  ", v.t);
    s << indent << "num: ";
    Printer<int64_t>::stream(s, indent + "  ", v.num);
    s << indent << "obstacles[]" << std::endl;
    for (size_t i = 0; i < v.obstacles.size(); ++i)
    {
      s << indent << "  obstacles[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::envsim_msgs::Obstacle_<ContainerAllocator> >::stream(s, indent + "    ", v.obstacles[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ENVSIM_MSGS_MESSAGE_OBSTACLEARRAY_H
