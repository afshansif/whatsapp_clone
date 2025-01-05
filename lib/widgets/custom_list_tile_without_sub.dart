import 'package:flutter/material.dart';

class CustomListTileWithoutSub extends StatelessWidget {
  const CustomListTileWithoutSub({super.key, required this.iconData, required this.text});

  final String text;

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return   ListTile(
      title: Text(
        text,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      leading:  Padding(
        padding:const EdgeInsets.symmetric(horizontal: 10.0),
        child: Icon(
          iconData,
          size: 25,
          color: Colors.grey,
        ),
      ),

    );
  }
}
