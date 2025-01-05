import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/contact_info.dart';
import 'package:whatsapp_clone/screens/chats_screen.dart';
import 'package:whatsapp_clone/widgets/chats.dart';
import 'package:whatsapp_clone/widgets/new_conversation_button.dart';

class AddNewContact extends StatelessWidget {
  const AddNewContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Select contact",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "${contacts.length} contacts",
              style: const TextStyle(fontSize: 15),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded),
          )
        ],
      ),
      body: ListView(
        children: [

          NewConversationButton(
            iconLeading: Icons.group_add,
            onPress: () {},
            title: "New group",
          ),
          NewConversationButton(
            iconLeading: Icons.person_add_alt_1,
            onPress: () {},
            title: "New contact",
          ),
          NewConversationButton(
            iconLeading: Icons.groups,
            onPress: () {},
            title: "New community",
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            child: Text(
              "Contacts on Whatsapp",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          const Chats(
            isChat: false,
          ),
        ],
      ),
    );
  }
}
