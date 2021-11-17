// ignore_for_file: prefer_const_constructors

//import 'package:emobot_mobile_v2/constants.dart';
import 'package:flutter/material.dart';
import 'package:emobot_mobile_v2/Screens/Session_Timer/components/body.dart';

void main() => runApp(TimerScreen());

class TimerScreen extends StatelessWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Session Page',
      home: Body(),
    );
  }
}
