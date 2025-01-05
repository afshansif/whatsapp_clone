import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/chats.dart';
import '../data/colors.dart';
import '../widgets/search_bar.dart';
import 'add_new_contact.dart';
import 'linked_device_screen.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  final text = "Ask Meta AI or Search";

  final textStyle =
      const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
          ),
          PopupMenuButton(
            position: PopupMenuPosition.under,
            color: kAppBarColor,
            itemBuilder: (ctx) => [
              const PopupMenuItem(child: Text('New group')),
              const PopupMenuItem(child: Text('New broadcast')),
              PopupMenuItem(
                child: const Text('Linked devices'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const LinkedDeviceScreen(),
                    ),
                  );
                },
              ),
              const PopupMenuItem(child: Text('Starred messages')),
              const PopupMenuItem(child: Text('Settings')),
            ],
          ),
        ],
      ),
      body: const Column(
        children: [
          CustomSearchBar(),
          // All contact chats
          Expanded(child: Chats(isChat: true)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => const AddNewContact(),
            ),
          );
        },
        backgroundColor: kTabColor,
        child: const Icon(
          Icons.chat,
          color: Colors.black,
        ),
      ),
    );
  }
}
