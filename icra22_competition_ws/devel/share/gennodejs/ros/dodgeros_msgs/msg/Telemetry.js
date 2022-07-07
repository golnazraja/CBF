// Auto-generated. Do not edit!

// (in-package dodgeros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let QuadState = require('./QuadState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Telemetry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.t = null;
      this.bridge_type = null;
      this.bridge_armed = null;
      this.guard_triggered = null;
      this.num_references_in_queue = null;
      this.reference_left_duration = null;
      this.rmse = null;
      this.reference = null;
      this.voltage = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('t')) {
        this.t = initObj.t
      }
      else {
        this.t = 0.0;
      }
      if (initObj.hasOwnProperty('bridge_type')) {
        this.bridge_type = initObj.bridge_type
      }
      else {
        this.bridge_type = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('bridge_armed')) {
        this.bridge_armed = initObj.bridge_armed
      }
      else {
        this.bridge_armed = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('guard_triggered')) {
        this.guard_triggered = initObj.guard_triggered
      }
      else {
        this.guard_triggered = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('num_references_in_queue')) {
        this.num_references_in_queue = initObj.num_references_in_queue
      }
      else {
        this.num_references_in_queue = 0;
      }
      if (initObj.hasOwnProperty('reference_left_duration')) {
        this.reference_left_duration = initObj.reference_left_duration
      }
      else {
        this.reference_left_duration = 0.0;
      }
      if (initObj.hasOwnProperty('rmse')) {
        this.rmse = initObj.rmse
      }
      else {
        this.rmse = 0.0;
      }
      if (initObj.hasOwnProperty('reference')) {
        this.reference = initObj.reference
      }
      else {
        this.reference = new QuadState();
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Telemetry
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [t]
    bufferOffset = _serializer.float64(obj.t, buffer, bufferOffset);
    // Serialize message field [bridge_type]
    bufferOffset = std_msgs.msg.String.serialize(obj.bridge_type, buffer, bufferOffset);
    // Serialize message field [bridge_armed]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.bridge_armed, buffer, bufferOffset);
    // Serialize message field [guard_triggered]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.guard_triggered, buffer, bufferOffset);
    // Serialize message field [num_references_in_queue]
    bufferOffset = _serializer.int32(obj.num_references_in_queue, buffer, bufferOffset);
    // Serialize message field [reference_left_duration]
    bufferOffset = _serializer.float64(obj.reference_left_duration, buffer, bufferOffset);
    // Serialize message field [rmse]
    bufferOffset = _serializer.float64(obj.rmse, buffer, bufferOffset);
    // Serialize message field [reference]
    bufferOffset = QuadState.serialize(obj.reference, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.float64(obj.voltage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Telemetry
    let len;
    let data = new Telemetry(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [t]
    data.t = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bridge_type]
    data.bridge_type = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [bridge_armed]
    data.bridge_armed = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [guard_triggered]
    data.guard_triggered = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [num_references_in_queue]
    data.num_references_in_queue = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reference_left_duration]
    data.reference_left_duration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rmse]
    data.rmse = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [reference]
    data.reference = QuadState.deserialize(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += std_msgs.msg.String.getMessageSize(object.bridge_type);
    length += QuadState.getMessageSize(object.reference);
    return length + 38;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dodgeros_msgs/Telemetry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5251574f675e7717477eef1003887d54';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # Time [s]
    float64 t
    
    # Bridge
    std_msgs/String bridge_type
    std_msgs/Bool bridge_armed
    std_msgs/Bool guard_triggered
    
    # Reference
    int32 num_references_in_queue
    float64 reference_left_duration
    float64 rmse
    dodgeros_msgs/QuadState reference
    
    # Onboard Telemetry
    float64 voltage
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    ================================================================================
    MSG: dodgeros_msgs/QuadState
    Header header
    
    # Time [s]
    float64 t
    
    # Pose
    geometry_msgs/Pose pose
    
    # Linear & angular velocity
    geometry_msgs/Twist velocity
    
    # Linear & angular acceleration
    geometry_msgs/Twist acceleration
    
    # Acc bias
    geometry_msgs/Vector3 acc_bias
    
    # Gyro bias
    geometry_msgs/Vector3 gyr_bias
    
    # Jerk
    geometry_msgs/Vector3 jerk
    
    # Snap
    geometry_msgs/Vector3 snap
    
    # Motor speeds
    float64[] motors
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Telemetry(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.t !== undefined) {
      resolved.t = msg.t;
    }
    else {
      resolved.t = 0.0
    }

    if (msg.bridge_type !== undefined) {
      resolved.bridge_type = std_msgs.msg.String.Resolve(msg.bridge_type)
    }
    else {
      resolved.bridge_type = new std_msgs.msg.String()
    }

    if (msg.bridge_armed !== undefined) {
      resolved.bridge_armed = std_msgs.msg.Bool.Resolve(msg.bridge_armed)
    }
    else {
      resolved.bridge_armed = new std_msgs.msg.Bool()
    }

    if (msg.guard_triggered !== undefined) {
      resolved.guard_triggered = std_msgs.msg.Bool.Resolve(msg.guard_triggered)
    }
    else {
      resolved.guard_triggered = new std_msgs.msg.Bool()
    }

    if (msg.num_references_in_queue !== undefined) {
      resolved.num_references_in_queue = msg.num_references_in_queue;
    }
    else {
      resolved.num_references_in_queue = 0
    }

    if (msg.reference_left_duration !== undefined) {
      resolved.reference_left_duration = msg.reference_left_duration;
    }
    else {
      resolved.reference_left_duration = 0.0
    }

    if (msg.rmse !== undefined) {
      resolved.rmse = msg.rmse;
    }
    else {
      resolved.rmse = 0.0
    }

    if (msg.reference !== undefined) {
      resolved.reference = QuadState.Resolve(msg.reference)
    }
    else {
      resolved.reference = new QuadState()
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0.0
    }

    return resolved;
    }
};

module.exports = Telemetry;
