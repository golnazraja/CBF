// Auto-generated. Do not edit!

// (in-package dodgeros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.t = null;
      this.is_single_rotor_thrust = null;
      this.collective_thrust = null;
      this.bodyrates = null;
      this.thrusts = null;
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
      if (initObj.hasOwnProperty('is_single_rotor_thrust')) {
        this.is_single_rotor_thrust = initObj.is_single_rotor_thrust
      }
      else {
        this.is_single_rotor_thrust = false;
      }
      if (initObj.hasOwnProperty('collective_thrust')) {
        this.collective_thrust = initObj.collective_thrust
      }
      else {
        this.collective_thrust = 0.0;
      }
      if (initObj.hasOwnProperty('bodyrates')) {
        this.bodyrates = initObj.bodyrates
      }
      else {
        this.bodyrates = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('thrusts')) {
        this.thrusts = initObj.thrusts
      }
      else {
        this.thrusts = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Command
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [t]
    bufferOffset = _serializer.float64(obj.t, buffer, bufferOffset);
    // Serialize message field [is_single_rotor_thrust]
    bufferOffset = _serializer.bool(obj.is_single_rotor_thrust, buffer, bufferOffset);
    // Serialize message field [collective_thrust]
    bufferOffset = _serializer.float64(obj.collective_thrust, buffer, bufferOffset);
    // Serialize message field [bodyrates]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.bodyrates, buffer, bufferOffset);
    // Check that the constant length array field [thrusts] has the right length
    if (obj.thrusts.length !== 4) {
      throw new Error('Unable to serialize array field thrusts - length must be 4')
    }
    // Serialize message field [thrusts]
    bufferOffset = _arraySerializer.float64(obj.thrusts, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Command
    let len;
    let data = new Command(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [t]
    data.t = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_single_rotor_thrust]
    data.is_single_rotor_thrust = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [collective_thrust]
    data.collective_thrust = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bodyrates]
    data.bodyrates = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [thrusts]
    data.thrusts = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 73;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dodgeros_msgs/Command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d577bccd8c13adfb614a4c929e12409';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header 
    
    # Time [s]
    float64 t
    
    # If input is in terms of collective thrust & bodyrates or single rotor thrusts
    bool is_single_rotor_thrust
    
    # Collective mass-normalized thrust [m/s^2]
    float64 collective_thrust
    
    # Angular rates in body frame [rad/s]
    geometry_msgs/Vector3 bodyrates
    
    # Single rotor thrusts [N]
    float64[4] thrusts
    
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
    const resolved = new Command(null);
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

    if (msg.is_single_rotor_thrust !== undefined) {
      resolved.is_single_rotor_thrust = msg.is_single_rotor_thrust;
    }
    else {
      resolved.is_single_rotor_thrust = false
    }

    if (msg.collective_thrust !== undefined) {
      resolved.collective_thrust = msg.collective_thrust;
    }
    else {
      resolved.collective_thrust = 0.0
    }

    if (msg.bodyrates !== undefined) {
      resolved.bodyrates = geometry_msgs.msg.Vector3.Resolve(msg.bodyrates)
    }
    else {
      resolved.bodyrates = new geometry_msgs.msg.Vector3()
    }

    if (msg.thrusts !== undefined) {
      resolved.thrusts = msg.thrusts;
    }
    else {
      resolved.thrusts = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = Command;
