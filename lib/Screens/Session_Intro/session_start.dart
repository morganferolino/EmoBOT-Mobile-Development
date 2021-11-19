import 'package:flutter/material.dart';
import 'package:emobot_mobile_v2/Screens/Session_Intro/components/body.dart';

class SessionIntroScreen extends StatelessWidget {
  final List data;
  const SessionIntroScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(data: data),
    );
  }
}
