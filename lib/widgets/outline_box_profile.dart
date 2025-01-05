import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/colors.dart';

class OutlineBoxProfile extends StatelessWidget {
  const OutlineBoxProfile(
      {super.key, required this.iconData, required this.text});

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only( left: 5, right: 5),
      padding: const EdgeInsets.symmetric(vertical: 10, ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          width: 1,
          color: Colors.grey.shade800,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(iconData,color: kTabColor,size: 34,),
          const SizedBox(height: 5,),
          Text(text, style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
        ],
      ),
    );
  }
}
