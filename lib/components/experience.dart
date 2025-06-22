import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: const Text(
            "Experience",
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Column(
          children: [
            Container(
              width: screenWidth < 900
                  ? screenWidth * 0.9
                  : ((screenWidth * 0.7) / 1),
              decoration: BoxDecoration(
                color: Color(0xFF1A2036),
              ),
              padding: const EdgeInsets.all(28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Front End Developer",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Divider(),
                  Text(
                    'Working as Front End Develpor for years. Worked on E-commerce, portfolio and blogs projects.\nMobile friendly and eye catching attractive UI design.',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Back End Developer",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Divider(),
                  Text(
                    'Have Strong Skills and experience in Back End Development. Taking Flutter Firebase and HiveDB\nas back end technologies created complex APIs for different mobile applications.',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Full Stack Developer",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Divider(),
                  Text(
                    'Taking Flutter and Firebase + HiveDB as Full Stack Technologies created many complex projects like E-\ncommerce, personal portfolio and Blogs. With Great UI and responsive mobile applications that gives good\nuser experience.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
