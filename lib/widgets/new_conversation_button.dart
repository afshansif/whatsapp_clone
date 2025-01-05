import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/colors.dart';

class NewConversationButton extends StatelessWidget {
  const NewConversationButton({
    super.key,
    required this.iconLeading,
    required this.onPress,
    required this.title,
  });

  final IconData iconLeading;
  final void Function() onPress;

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        leading: CircleAvatar(
          backgroundColor: kTabColor,
          radius: 26,
          child: Icon(iconLeading, size: 31,color: Colors.black,),
        ),
        onTap: onPress,
      ),
    );
  }
}
