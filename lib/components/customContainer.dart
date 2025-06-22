import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {

  final Widget child;
  final double? height;
  const CustomContainer({super.key, required this.child, this.height});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: widget.height ?? 600,
      width: width,
      decoration: BoxDecoration(color: Color(0xFF3D2E5C)),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: width / 7,
        ),
        child: widget.child,
      ),
    );
  }
}
