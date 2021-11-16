// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore

//import 'package:emobot_mobile_v2/constants.dart';
import 'package:flutter/material.dart';
import 'package:emobot_mobile_v2/Screens/Session_Questions/components/body.dart';

void main() => runApp(QuestionScreen());

class QuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Body(),
    );
  }
}
