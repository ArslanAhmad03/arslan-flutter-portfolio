import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/socialrow.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF1A2036),
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(top: 20.0),
      child: const Column(
        children: [
          SocialRow(),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "© arslan_developer All Rights Reserved.",
          ),
        ],
      ),
    );
  }
}
