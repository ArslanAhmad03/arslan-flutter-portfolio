
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class HireButton extends StatefulWidget {
  final VoidCallback onTap;
  const HireButton({super.key, required this.onTap});

  @override
  State<HireButton> createState() => _HireButtonState();
}

class _HireButtonState extends State<HireButton> {

  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GlassContainer.clearGlass(
        width: isHovering ? 102 : 100,
        height: isHovering ? 32 : 30,
        borderColor: isHovering ? Colors.white : Color(0xFFFF5722),
        borderRadius: BorderRadius.circular(16.0),
        child: InkWell(
          onTap: widget.onTap,
          onHover: (val) {
            setState(() {
              isHovering = val;
            });
          },
          borderRadius: BorderRadius.circular(16.0),
          child: Center(child: Text('Hire Me!')),
        ),
      ),
    );
  }
}
