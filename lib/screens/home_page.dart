import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/colors.dart';

import 'package:whatsapp_clone/screens/calls_screen.dart';

import 'package:whatsapp_clone/screens/chats_screen.dart';
import 'package:whatsapp_clone/screens/communities_screen.dart';
import 'package:whatsapp_clone/screens/updates_screen.dart';

import 'package:whatsapp_clone/widgets/custom_nav_bar_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  List<Widget> screens = [
    const ChatsScreen(),
    const  UpdatesScreen(),
    const CommunitiesScreen(),
    const CallsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        backgroundColor: kBackgroundColor,
        indicatorColor: kTabColor.withOpacity(0.5),
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: const [
          CustomNavBarIcon(
            iconData: Icons.chat,
            label: 'Chats',
          ),
          CustomNavBarIcon(
            iconData: Icons.update,
            label: 'Updates',
          ),
          CustomNavBarIcon(
            iconData: Icons.groups_outlined,
            label: 'Communities',
          ),
          CustomNavBarIcon(
            iconData: Icons.call_outlined,
            label: 'Calls',
          ),
        ],
      ),

    );
  }
}
