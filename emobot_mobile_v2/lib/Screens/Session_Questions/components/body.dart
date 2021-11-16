// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:emobot_mobile_v2/constants.dart';
import 'package:emobot_mobile_v2/components/question_cards.dart';
//import 'package:emobot_mobile_v2/components/nav_drawer.dart';
//import 'package:emobot_mobile_v2/Screens/Session_Questions/components/background.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      /*appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Session'),
        backgroundColor: kPrimaryColor,
      ),*/
      /*drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('JOHN DOE',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
              accountEmail: Text('johndoe@email.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.allprodad.com/wp-content/uploads/2021/03/05-12-21-happy-people.jpg'),
              ),
              decoration: BoxDecoration(color: kPrimaryColor),
            ),
            ListTile(
              leading: Icon(Icons.person_rounded),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccountScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.add_chart_rounded),
              title: Text('Session'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuestionScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccountScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app_rounded),
              title: Text('Logout'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()));
              },
            ),
          ],
        ),
      ),*/
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.topLeft,
              image: AssetImage('assets/images/main_top.png')),
        ),
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
