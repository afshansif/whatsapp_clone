import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/colors.dart';
import 'package:whatsapp_clone/screens/user_profile_screen.dart';

import 'package:whatsapp_clone/widgets/profile_picture.dart';
import 'package:whatsapp_clone/widgets/send_card.dart';

import '../widgets/bottom_send_messagebar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.data});

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    final url = '${data['name']}.${data['imageType']}';
    final bool isOnline = data['isOnline'] ?? true;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.videocam_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call_outlined)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
        ],
        leadingWidth: 25,
        title: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => UserProfileScreen(data: data),
              ),
            );
          },
          child: Row(
            children: [
              ProfilePicture(
                url: url,
                radius: 20,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['name'],
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  isOnline
                      ? const Text(
                          "online",
                          style: TextStyle(fontSize: 11),
                        )
                      : Text(
                          data['lastSeen'],
                          style: const TextStyle(fontSize: 11),
                        ),
                ],
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                SendCard(
                  text: data['message'],
                  timeStamp: "11:00 PM",
                  isRead: true,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            const BottomSendMessageBar(),
          ],
        ),
      ),
    );
  }
}
