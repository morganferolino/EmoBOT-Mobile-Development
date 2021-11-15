// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:emobot_mobile_v2/constants.dart';
import 'package:emobot_mobile_v2/Screens/Session/components/background.dart';

class Session extends StatefulWidget {
  @override
  _SessionState createState() => _SessionState();
}

class _SessionState extends State<Session> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Session Menu'),
        backgroundColor: kPrimaryColor,
      ),
      backgroundColor: kPrimaryLightColor,
      drawer: Drawer(
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
            ),
            ListTile(
              leading: Icon(Icons.vpn_key_rounded),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app_rounded),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
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
            Option(
                title: 'Question 1',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
            Option(
                title: 'Question 2',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
            Option(
                title: 'Question 3',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
            Option(
                title: 'Question 4',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
            Option(
                title: 'Question 5',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
            Option(
                title: 'Question 6',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
            Option(
                title: 'Question 7',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
            Option(
                title: 'Question 8',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
            Option(
                title: 'Question 9',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
            Option(
                title: 'Question 10',
                icon: Icons.question_answer_rounded,
                color: kPrimaryColor),
          ],
        ),
      ),
    );
  }
}
