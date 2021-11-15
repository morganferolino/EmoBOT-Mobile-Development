import 'package:emobot_mobile_v2/Screens/Accounts/accounts_screen.dart';
import 'package:emobot_mobile_v2/Screens/EditProfile/components/background.dart';
import 'package:emobot_mobile_v2/components/rounded_button.dart';
import 'package:emobot_mobile_v2/components/rounded_input_field.dart';
import 'package:emobot_mobile_v2/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  static TextEditingController username = TextEditingController();
  static TextEditingController firstname = TextEditingController();
  static TextEditingController lastname = TextEditingController();
  const Body({Key? key}) : super(key: key);

  //login UI
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // ignore: unnecessary_const
          const Text(
            "EDIT PROFILE",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RoundedInputField(
            //controller: username,
            text: username,
            hintText: "Enter your username",

            onChanged: (value) {
              // ignore: unused_label
              username:
              value;
            },
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RoundedInputField(
            //controller: username,
            text: firstname,
            hintText: "Enter your first name",

            onChanged: (value) {
              // ignore: unused_label
              username:
              value;
            },
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RoundedInputField(
            //controller: username,
            text: lastname,
            hintText: "Enter your last name",
            onChanged: (value) {
              // ignore: unused_label
              username:
              value;
            },
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedButton(
            text: "SAVE CHANGES",
            press: () {
              // TO DO: UPDATE DATABASE WITH THE CHANGES.
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AccountScreen()));
            },
            color: kPrimaryColor,
            textColor: Colors.white,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
        ],
      ),
    ));
  }
}
