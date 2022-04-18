import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String time;
  final String avatar;
  final Icon callType;

  CallModel({required this.name, required this.time, required this.avatar, required this.callType});
  static Icon callReceived = const Icon(
    Icons.call_received,
    size: 18,
    color: Colors.green,
  );
  static Icon callMissed = const Icon(
    Icons.call_missed,
    size: 18,
    color: Colors.red,
  );
}

List<CallModel> callData = [
  CallModel(
    name: "Abdullah",
    time: "10:20",
    callType: CallModel.callReceived,
    avatar: "assets/1.jpg",
  ),
  CallModel(
    name: "Abrar",
    time: "14:23",
    callType: CallModel.callMissed,
    avatar: "assets/2.jpg",
  ),
  CallModel(
    name: "Areeb Ahmad",
    time: "23:20",
    callType: CallModel.callReceived,
    avatar: "assets/3.jpg",
  ),
  CallModel(
    name: "hassan syed",
    time: "22:30",
    callType: CallModel.callMissed,
    avatar: "assets/4.jpg",
  ),
];