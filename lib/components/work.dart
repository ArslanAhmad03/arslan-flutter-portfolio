
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart' show CarouselSlider;
import 'package:flutter/material.dart';

class works extends StatefulWidget {
  const works({super.key});

  @override
  State<works> createState() => _worksState();
}

class _worksState extends State<works> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          child: const Text(
            "Work",
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
            children: [
              AspectRatio(
                aspectRatio: 20 / 20,
                child: CarouselSlider(
                  items: imageList
                      .map(
                        (item) => Image.asset(
                          item['image_path'],
                          fit: BoxFit.fill,
                          width: double.infinity,
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    viewportFraction: 0.8,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.4,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageList.map((item) {
                  int index = imageList.indexOf(item);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.symmetric(horizontal: 6.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          _currentIndex == index ? Colors.red : Colors.grey,
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
        // SizedBox(
        //   height: 400,
        //   child: Container(
        //     width: screenWidth < 900
        //         ? screenWidth * 0.9
        //         : ((screenWidth * 0.7) / 3),
        //     decoration: BoxDecoration(
        //       color: Color(0xFF1A2036),
        //     ),
        //     padding: const EdgeInsets.all(28.0),
        //     child: Column(
        //       children: [
        //         AspectRatio(
        //           aspectRatio: 20 / 20,
        //           child: CarouselSlider(
        //             items: imageshopList
        //                 .map(
        //                   (item) => Image.asset(
        //                     item['image_path'],
        //                     fit: BoxFit.fill,
        //                     width: double.infinity,
        //                   ),
        //                 )
        //                 .toList(),
        //             options: CarouselOptions(
        //               viewportFraction: 0.9,
        //               autoPlay: true,
        //               enlargeCenterPage: true,
        //               enlargeFactor: 0.9,
        //               autoPlayAnimationDuration: Duration(milliseconds: 800),
        //               onPageChanged: (index, reason) {
        //                 setState(() {
        //                   _currentIndex = index;
        //                 });
        //               },
        //             ),
        //           ),
        //         ),
        //         const SizedBox(height: 30),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: imageList.map((item) {
        //             int index = imageList.indexOf(item);
        //             return Container(
        //               width: 8.0,
        //               height: 8.0,
        //               margin: EdgeInsets.symmetric(horizontal: 6.0),
        //               decoration: BoxDecoration(
        //                 shape: BoxShape.circle,
        //                 color: _currentIndex == index ? Colors.red : Colors.grey,
        //               ),
        //             );
        //           }).toList(),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // SizedBox(
        //   height: 400,
        //   child: Container(
        //     width: screenWidth < 900
        //         ? screenWidth * 0.9
        //         : ((screenWidth * 0.7) / 3),
        //     decoration: BoxDecoration(
        //       color: Color(0xFF1A2036),
        //     ),
        //     padding: const EdgeInsets.all(28.0),
        //     child: Column(
        //       children: [
        //         AspectRatio(
        //           aspectRatio: 20 / 20,
        //           child: CarouselSlider(
        //             items: imageattendList
        //                 .map(
        //                   (item) => Image.asset(
        //                     item['image_path'],
        //                     fit: BoxFit.fill,
        //                     width: double.infinity,
        //                   ),
        //                 )
        //                 .toList(),
        //             options: CarouselOptions(
        //               viewportFraction: 0.9,
        //               autoPlay: true,
        //               enlargeCenterPage: true,
        //               enlargeFactor: 0.9,
        //               autoPlayAnimationDuration: Duration(milliseconds: 800),
        //               onPageChanged: (index, reason) {
        //                 setState(() {
        //                   _currentIndex = index;
        //                 });
        //               },
        //             ),
        //           ),
        //         ),
        //         const SizedBox(height: 30),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: imageList.map((item) {
        //             int index = imageList.indexOf(item);
        //             return Container(
        //               width: 8.0,
        //               height: 8.0,
        //               margin: EdgeInsets.symmetric(horizontal: 6.0),
        //               decoration: BoxDecoration(
        //                 shape: BoxShape.circle,
        //                 color:
        //                     _currentIndex == index ? Colors.red : Colors.grey,
        //               ),
        //             );
        //           }).toList(),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }

  int _currentIndex = 0;
  List imageList = [
    {"id": 1, "image_path": 'assets/Shop/shop1.jpg'},
    {"id": 2, "image_path": 'assets/Shop/shop2.jpg'},
    {"id": 3, "image_path": 'assets/Shop/shop3.jpg'},
    {"id": 4, "image_path": 'assets/Shop/shop4.jpg'},
  ];
  List imageshopList = [
    {"id": 1, "image_path": 'assets/Flash/flash1.jpg'},
    {"id": 2, "image_path": 'assets/Flash/flash2.jpg'},
    {"id": 3, "image_path": 'assets/Flash/flash3.jpg'},
    {"id": 4, "image_path": 'assets/Flash/flash4.jpg'},
    {"id": 5, "image_path": 'assets/Flash/flash5.jpg'},
  ];
  List imageattendList = [
    {"id": 1, "image_path": 'assets/attendance/attend1.jpg'},
    {"id": 2, "image_path": 'assets/attendance/attend2.jpg'},
    {"id": 3, "image_path": 'assets/attendance/attend3.jpg'},
    {"id": 4, "image_path": 'assets/attendance/attend4.jpg'},
  ];
}
