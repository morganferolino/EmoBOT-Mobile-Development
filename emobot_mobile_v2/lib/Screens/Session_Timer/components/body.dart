// ignore_for_file: prefer_const_constructors

import 'package:emobot_mobile_v2/Screens/Accounts/accounts_screen.dart';
import 'package:emobot_mobile_v2/constants.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  CountDownController controller = CountDownController();

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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AccountScreen()));
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
