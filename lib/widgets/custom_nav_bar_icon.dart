import 'package:flutter/material.dart';

import '../data/colors.dart';

class CustomNavBarIcon extends StatelessWidget {
  const CustomNavBarIcon(
      {super.key, required this.iconData, required this.label});

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: Icon(
        iconData,
        color: Colors.white,
      ),
      label: label,
      selectedIcon: Icon(
        iconData,
        color: Colors.white70,
      ),
    );
  }
}
