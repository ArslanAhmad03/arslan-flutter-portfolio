import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

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
            "Skills",
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          width: screenWidth < 900
              ? screenWidth * 0.9
              : ((screenWidth * 0.7) / 3),
          decoration: BoxDecoration(
            color: Color(0xFF1A2036),
          ),
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Programming Langauges",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: const [
                  Chip(
                    label: Text(
                      "Dart",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(
                      color: Colors.indigo,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text(
                      "Swift",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(
                      color: Colors.indigo,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text(
                      "Java",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(
                      color: Colors.indigo,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text(
                      "C++",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(
                      color: Colors.indigo,
                    ),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: screenWidth < 900
              ? screenWidth * 0.9
              : ((screenWidth * 0.7) / 3),
          decoration: BoxDecoration(
            color: Color(0xFF1A2036),
          ),
          padding: EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Frameworks",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: const [
                  Chip(
                    label: Text(
                      "Flutter",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text(
                      "React Native",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text(
                      "Xamarin",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: screenWidth < 900
              ? screenWidth * 0.9
              : ((screenWidth * 0.7) / 3),
          decoration: BoxDecoration(
            color: Color(0xFF1A2036),
          ),
          padding: EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Other Tools",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: const [
                  Chip(
                    label: Text(
                      "Flutter",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text(
                      "Flutter Firebase",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text(
                      "Git/GitHub",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text(
                      "Hive DB",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
