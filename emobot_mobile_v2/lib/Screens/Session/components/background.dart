// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:emobot_mobile_v2/constants.dart';

class Option extends StatelessWidget {
  Option({required this.title, required this.icon, required this.color});

  final String title;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 4,
      child: InkWell(
        onTap: () {},
        splashColor: kPrimaryColor,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70,
                color: color,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}
