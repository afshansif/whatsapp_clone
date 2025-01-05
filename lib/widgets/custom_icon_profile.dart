import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/colors.dart';


class CustomIconProfile extends StatelessWidget {
  const CustomIconProfile({super.key, required this.iconData});

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: 27,
      color: kTabColor,
    );
  }
}
