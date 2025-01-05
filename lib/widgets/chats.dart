import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/profile_picture.dart';

import '../data/contact_info.dart';
import '../screens/chat_screen.dart';

class Chats extends StatelessWidget {
  const Chats({super.key, required this.isChat});

  final bool isChat;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: isChat != true ? const NeverScrollableScrollPhysics() : null,
      shrinkWrap: true,
      itemCount: contacts.length,
      itemBuilder: (ctx, index) {
        final data = contacts[index];
        final url = '${data['name']}.${data['imageType']}';
        return InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (ctx) => ChatScreen(data: data)));
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ListTile(
              leading: ProfilePicture(
                url: url,
                radius: 25,
              ),
              title: Text(data['name']),
              subtitle: Text(
                data['message'],
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Text(isChat == true ? data['time'] : ""),
            ),
          ),
        );
      },
    );
  }
}
