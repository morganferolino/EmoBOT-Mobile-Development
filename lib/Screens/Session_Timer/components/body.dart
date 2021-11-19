// ignore_for_file: prefer_const_constructors

import 'package:emobot_mobile_v2/Screens/Login/login_screen.dart';
import 'package:emobot_mobile_v2/constants.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class Body extends StatefulWidget {
  final List data;
  const Body({Key? key, required this.data}) : super(key: key);
  @override
  // ignore: no_logic_in_create_state
  _BodyScreenState createState() => _BodyScreenState(data);
}

class _BodyScreenState extends State<Body> {
  CountDownController controller = CountDownController();
  List data;
  _BodyScreenState(this.data);
  bool valTheme = true;
  onChangeFunction(bool newValue) {
    setState(() {
      valTheme = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: Center(
        child: CircularCountDownTimer(
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 2,
          duration: 1,
          fillColor: kPrimaryColor,
          ringColor: kPrimaryLightColor,
          controller: controller,
          backgroundColor: Colors.white54,
          strokeWidth: 15.0,
          strokeCap: StrokeCap.round,
          isTimerTextShown: true,
          isReverse: true,
          onComplete: () {
            Alert(
              context: context,
              type: AlertType.info,
              title: "Time's up!",
              desc:
                  "Thanks for answering the question, you may now proceed to the Results page.",
              buttons: [
                DialogButton(
                  color: kPrimaryColor,
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  //height: 50,
                  width: 130,
                )
              ],
            ).show();
          },
          textStyle: TextStyle(fontSize: 50.0, color: Colors.black),
        ),
      ),
    );
  }
}
