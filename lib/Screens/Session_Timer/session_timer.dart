// ignore_for_file: prefer_const_constructors

//import 'package:emobot_mobile_v2/constants.dart';
import 'package:flutter/material.dart';
import 'package:emobot_mobile_v2/Screens/Session_Timer/components/body.dart';

class TimerScreen extends StatelessWidget {
  final List data;
  const TimerScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(data: data),
    );
  }
}
