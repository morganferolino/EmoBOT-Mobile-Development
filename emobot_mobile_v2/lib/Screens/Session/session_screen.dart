// ignore_for_file: use_key_in_widget_constructors

//import 'package:emobot_mobile_v2/constants.dart';
import 'package:flutter/material.dart';
import 'package:emobot_mobile_v2/Screens/Session/components/body.dart';

void main() => runApp(SessionScreen());

class SessionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Session(),
    );
  }
}
