import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.iconData, required this.sub, required this.text});

  final String text;
  final String sub;
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
      subtitle:  Text(
        sub,
        style: const TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold ),
      ),
    );
  }
}
