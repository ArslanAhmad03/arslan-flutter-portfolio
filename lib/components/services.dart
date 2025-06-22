import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({super.key});

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
            "Services",
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
                "App Designing",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Divider(),
              Text(
                'We provides you with a customized app design that is perfect for your business or personal application.',
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
                "App Development",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(),
              Text(
                'We Provides fully working mobile friendly and user catching mobile applications for your work.',
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
                "Designing",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(),
              Text(
                'Perfect illustrations and designs that will be user attractive and eye catching.',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
