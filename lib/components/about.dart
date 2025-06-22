import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/animated_contact.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Image.asset(
              "assets/dev.png",
              height: 156.0,
            ),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                GestureDetector(
                  onTap: () {
                  },
                  child: const Chip(
                    label: Text(
                      "Download CV",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                    backgroundColor: Colors.redAccent,
                    padding: EdgeInsets.all(8.0),
                  ),
                ),
                const Chip(
                  label: Text(
                    "Flutter App Developer",
                  ),
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                  ),
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.all(8.0),
                ),
              ],
            ),
            const Divider(),
            AnimatedContact(
              iconData: FontAwesomeIcons.github,
              title: "Github",
              subtitle: "ArslanAhmad03",
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Github')),
                );
              },
            ),
            AnimatedContact(
              iconData: FontAwesomeIcons.linkedinIn,
              title: "Linkedin",
              subtitle: "Arslan Ahmad",
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Linkedin')),
                );
              },
            ),
            AnimatedContact(
              iconData: FontAwesomeIcons.stackOverflow,
              title: "StackOverflow",
              subtitle: "arslan ahmad",
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('StackOverflow')),
                );
              },
            ),
          ],
        ),
        /*
        Column(
          children: [
            Divider(),
            //SocialRow(),
          ],
        ),*/
      ],
    );
  }
}
