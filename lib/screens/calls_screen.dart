import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chats_screen.dart';
import 'package:whatsapp_clone/widgets/calls.dart';
import 'package:whatsapp_clone/widgets/chats.dart';
import 'package:whatsapp_clone/widgets/new_conversation_button.dart';

import '../data/colors.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calls",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined, color: Colors.white),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_rounded, color: Colors.white)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded, color: Colors.white),
          )
        ],
      ),
      body: ListView(

        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 17),
            child: Text(
              "Favorites",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: NewConversationButton(
                iconLeading: Icons.favorite,
                onPress: () {},
                title: "Add favorite"),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 20, bottom: 22),
            child: Text(
              "Recent",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const Calls(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kTabColor,
        child: const Icon(
          Icons.add_ic_call,
          color: Colors.black,
          size: 29,
        ),
      ),
    );
  }
}
