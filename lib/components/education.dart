
import 'package:flutter/material.dart';
import 'package:timelines_plus/timelines_plus.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class EducationEntry {
  final String date;
  final String title;
  final String description;

  EducationEntry(this.date, this.title, this.description);
}

class _EducationState extends State<Education> {

  final List<EducationEntry> educationEntries = [
    EducationEntry('09/2021 - Present', 'BSCS', 'Islamia University Of Bahawalpur, RYK Campus'),
    EducationEntry('07/2019 - 10/2021', 'Intermediate FSc', 'Govt. Higher Secondary School Taj Garh, RYK'),
    EducationEntry('04/2017 - 07/2019', 'Matric', 'Govt. Higher Secondary School Taj Garh, RYK'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Education",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Timeline.tileBuilder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          builder: TimelineTileBuilder.fromStyle(
            itemCount: 3,
            contentsAlign: ContentsAlign.alternating,
            contentsBuilder: (context, index) {
              final entry = educationEntries[index];
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        entry.date,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.indigo,
                        ),
                      ),
                      Text(
                        entry.title,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        entry.description,
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
