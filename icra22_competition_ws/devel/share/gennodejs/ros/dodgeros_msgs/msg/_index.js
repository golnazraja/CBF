
"use strict";

let Command = require('./Command.js');
let Setpoint = require('./Setpoint.js');
let Reference = require('./Reference.js');
let RotorFeedbackStamped = require('./RotorFeedbackStamped.js');
let QuadState = require('./QuadState.js');
let DebugMsg = require('./DebugMsg.js');
let Telemetry = require('./Telemetry.js');
let UInt8Stamped = require('./UInt8Stamped.js');

module.exports = {
  Command: Command,
  Setpoint: Setpoint,
  Reference: Reference,
  RotorFeedbackStamped: RotorFeedbackStamped,
  QuadState: QuadState,
  DebugMsg: DebugMsg,
  Telemetry: Telemetry,
  UInt8Stamped: UInt8Stamped,
};
