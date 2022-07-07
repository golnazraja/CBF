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
let Command = require('./Command.js');

//-----------------------------------------------------------

class Setpoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new QuadState();
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = new Command();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Setpoint
    // Serialize message field [state]
    bufferOffset = QuadState.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = Command.serialize(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Setpoint
    let len;
    let data = new Setpoint(null);
    // Deserialize message field [state]
    data.state = QuadState.deserialize(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = Command.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += QuadState.getMessageSize(object.state);
    length += Command.getMessageSize(object.command);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dodgeros_msgs/Setpoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7664ff7a9a9bd8a5486517df47844f44';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Angular rates in body frame
    dodgeros_msgs/QuadState state
    
    # Single rotor thrusts
    dodgeros_msgs/Command command
    
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
    ================================================================================
    MSG: dodgeros_msgs/Command
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Setpoint(null);
    if (msg.state !== undefined) {
      resolved.state = QuadState.Resolve(msg.state)
    }
    else {
      resolved.state = new QuadState()
    }

    if (msg.command !== undefined) {
      resolved.command = Command.Resolve(msg.command)
    }
    else {
      resolved.command = new Command()
    }

    return resolved;
    }
};

module.exports = Setpoint;
