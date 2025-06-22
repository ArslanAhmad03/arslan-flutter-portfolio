
import 'package:flutter/material.dart';


final navItems = [
  TextButton(
    onPressed: () {
      // Scrollable.ensureVisible(eduKey.currentContext!);
    },
    child: const Text("Home"),
  ),
  TextButton(
    onPressed: () {
      // Scrollable.ensureVisible(eduKey.currentContext!);
    },
    child: const Text("Services"),
  ),
  TextButton(
    onPressed: () {
      // Scrollable.ensureVisible(eduKey.currentContext!);
    },
    child: const Text("Portfolio"),
  ),
  TextButton(
    onPressed: () {
      // Scrollable.ensureVisible(eduKey.currentContext!);
    },
    child: const Text("Contact"),
  ),
  TextButton(
    onPressed: () {
      // Scrollable.ensureVisible(eduKey.currentContext!);
    },
    child: const Text("Pages"),
  ),
];

class DrawerItems extends StatelessWidget {
  const DrawerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          TextButton(
            onPressed: () {
              // Scrollable.ensureVisible(eduKey.currentContext!);
            },
            child: const Text("Home"),
          ),
          TextButton(
            onPressed: () {
              // Scrollable.ensureVisible(eduKey.currentContext!);
            },
            child: const Text("Services"),
          ),
          TextButton(
            onPressed: () {
              // Scrollable.ensureVisible(eduKey.currentContext!);
            },
            child: const Text("Portfolio"),
          ),
          TextButton(
            onPressed: () {
              // Scrollable.ensureVisible(eduKey.currentContext!);
            },
            child: const Text("Contact"),
          ),
          TextButton(
            onPressed: () {
              // Scrollable.ensureVisible(eduKey.currentContext!);
            },
            child: const Text("Pages"),
          ),
        ],
    );
  }
}
