import 'package:emobot_mobile_v2/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SessionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 80;

    return Container(
      color: kPrimaryColor,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'Flutter-made',
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        fontSize: 36,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 0.7
                          ..color = kPrimaryLightColor),
                  ),
                  Text(
                    'Puzzle',
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        fontSize: 36,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 0.7
                          ..color = kPrimaryLightColor),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  circButton(FontAwesomeIcons.info),
                  circButton(FontAwesomeIcons.medal),
                  circButton(FontAwesomeIcons.lightbulb),
                  circButton(FontAwesomeIcons.cog),
                ],
              ),
              Wrap(
                runSpacing: 16,
                children: [
                  modeButton('Ranked Mode', 'Elevate your level',
                      FontAwesomeIcons.trophy, kPrimaryColor, width),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding circButton(IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: RawMaterialButton(
        onPressed: () {},
        fillColor: kPrimaryLightColor,
        shape: const CircleBorder(),
        constraints: const BoxConstraints(minHeight: 35, minWidth: 35),
        child: FaIcon(
          icon,
          size: 22,
          color: kPrimaryColor,
        ),
      ),
    );
  }

  GestureDetector modeButton(
      String title, String subtitle, IconData icon, Color color, double width) {
    return GestureDetector(
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    fontFamily: 'Manrope',
                    color: kPrimaryLightColor,
                    fontSize: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      fontFamily: 'Manrope',
                      color: kPrimaryLightColor,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 18.0),
              child: FaIcon(icon, size: 35, color: kPrimaryLightColor),
            )
          ],
        ),
      ),
    );
  }
}
