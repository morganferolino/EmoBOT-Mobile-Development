// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:emobot_mobile_v2/constants.dart';
import 'package:emobot_mobile_v2/components/question_card.dart';

class Body extends StatefulWidget {
  final List data;
  const Body({Key? key, required this.data}) : super(key: key);
  @override
  // ignore: no_logic_in_create_state
  _BodyScreenState createState() => _BodyScreenState(data);
}

class _BodyScreenState extends State<Body> {
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.topLeft,
              image: AssetImage('assets/images/main_top.png')),
        ),
        /*foregroundDecoration: BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.bottomRight,
              image: AssetImage('assets/images/login_bottom.png')),
        ),*/
        padding: EdgeInsets.all(30),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            QuestionCard(
                title: 'Question 1',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
            QuestionCard(
                title: 'Question 2',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
            QuestionCard(
                title: 'Question 3',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
            QuestionCard(
                title: 'Question 4',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
            QuestionCard(
                title: 'Question 5',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
            QuestionCard(
                title: 'Question 6',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
            QuestionCard(
                title: 'Question 7',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
            QuestionCard(
                title: 'Question 8',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
            QuestionCard(
                title: 'Question 9',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
            QuestionCard(
                title: 'Question 10',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
          ],
        ),
      ),
    );
  }
}
