
import 'package:flutter/material.dart';

  /// user information container
  Widget userInfo(TextTheme textTheme, ColorScheme colorScheme) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xFFFF5722),
          child: Text('AA'),
        ),
        SizedBox(width: 4.0),
        Text(
          'arslan',
          style: textTheme.displaySmall?.copyWith(color: colorScheme.secondary),
        ),
      ],
    );
  }

  /// elevated button
  Widget customElevatedButton ({required VoidCallback onTap, required String title}) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              30.0,
            ),
          ),
        ),

        foregroundColor:
        WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
          if (states.contains(
            WidgetState.hovered,
          )) {
            return Color(
              0xFFFF5722,
            );
          }
          return null;
        }),

        overlayColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
          if (states.contains(
            WidgetState.hovered,
          )) {
            return Colors.white;
          }
          return null;
        }),

        side: WidgetStateProperty.resolveWith<BorderSide?>((Set<WidgetState> states) {
          if (states.contains(
            WidgetState.hovered,
          )) {
            return BorderSide(
              color: Color(0xFFFF5722),
              width: 1.0,
            );
          }
          return null;
        }),
      ),
      child: Text(title),
    );
  }

  /// service card
  Widget serviceCard({required double width, required String title, required String image}) {
    return Card(
      child: Container(
        height: 340,
        width: width / 4 - 30,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            Divider(color: Colors.grey),

            SizedBox(height: 30),

            Spacer(),

            Container(
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
              ),
            ),

          ],
        ),
      ),
    );
  }

  /// portfolio card design
  Widget portfolioCard ({required double width, required String image}){
    return Card(
      child: Container(
        height: 250,
        width: width / 3,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12.0),
          image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
        ),
      ),
    );
  }