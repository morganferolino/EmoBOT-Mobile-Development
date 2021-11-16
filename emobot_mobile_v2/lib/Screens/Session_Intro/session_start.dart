import 'package:flutter/material.dart';
//import 'package:emobot_mobile_v2/constants.dart';
import 'package:emobot_mobile_v2/Screens/Session_Intro/components/body.dart';

void main() => runApp(const StartPage());

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //resizeToAvoidBottomInset: false,
      home: Body(),
    );
  }
}
