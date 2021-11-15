import 'package:emobot_mobile_v2/Screens/EditProfile/editprofile_screen.dart';
import 'package:flutter/material.dart';

class AccountOption extends StatelessWidget {
  final String page;
  const AccountOption({
    Key? key,
    required this.context,
    required this.title,
    required this.page,
  }) : super(key: key);

  final BuildContext context;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (page == "Change Password") {
          // Navigator.push(
          //   context, MaterialPageRoute(builder: (context) => AccountScreen()));
        } else if (page == "Edit Profile") {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => EditProfileScreen()));
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600])),
            const Icon(Icons.arrow_right_rounded, color: Colors.grey)
          ],
        ),
      ),
    );
  }
}
