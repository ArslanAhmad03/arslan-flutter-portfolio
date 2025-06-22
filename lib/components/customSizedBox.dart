import 'package:flutter/material.dart';

class CustomSizedBox extends StatefulWidget {
  final Widget child;
  final double? height, verticalEdge;
  const CustomSizedBox({super.key, required this.child, this.height, this.verticalEdge});

  @override
  State<CustomSizedBox> createState() => _CustomSizedBoxState();
}

class _CustomSizedBoxState extends State<CustomSizedBox> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: widget.height ?? 600,
      width: width,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: widget.verticalEdge ?? 20.0,
          horizontal: width / 7,
        ),
        child: widget.child,
      ),
    );
  }
}
