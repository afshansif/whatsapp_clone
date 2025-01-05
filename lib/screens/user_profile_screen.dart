import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/colors.dart';
import 'package:whatsapp_clone/widgets/custom_divider.dart';
import 'package:whatsapp_clone/widgets/custom_icon_profile.dart';
import 'package:whatsapp_clone/widgets/custom_list_tile.dart';
import 'package:whatsapp_clone/widgets/custom_list_tile_without_sub.dart';
import 'package:whatsapp_clone/widgets/outline_box_profile.dart';
import 'package:whatsapp_clone/widgets/profile_picture.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key, required this.data});

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    final url = '${data['name']}.${data['imageType']}';
    final bool isOnline = data['isOnline'] ?? true;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: Icon(Icons.more_vert_rounded),
              )
            ],

            flexibleSpace: FlexibleSpaceBar(

              centerTitle: true,
              background: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ProfilePicture(url: url, radius: 80),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      data["name"],
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      data["number"],
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    isOnline
                        ? const Text(
                            "online",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : Text(
                            data["lastSeen"],
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 26.0, horizontal: 7),
                      child: Row(
                        children: [
                          Expanded(
                            child: OutlineBoxProfile(
                              iconData: Icons.phone_outlined,
                              text: 'Audio',
                            ),
                          ),
                          Expanded(
                            child: OutlineBoxProfile(
                              iconData: Icons.videocam_outlined,
                              text: 'Video',
                            ),
                          ),
                          Expanded(
                            child: OutlineBoxProfile(
                              iconData: Icons.search_rounded,
                              text: 'Search',
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            expandedHeight:
                420.0, // Fallback/starting height but keeps adjustable inside
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const CustomDivider(),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  width: double.infinity,
                  height: 90,
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Hey there! I'm using WhatsApp.",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const CustomDivider(),
                const ListTile(
                  title: Text(
                    "Media, links and docs",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.chevron_right_outlined),
                ),
                const CustomDivider(),
                const CustomListTileWithoutSub(
                  iconData: Icons.notifications_none,
                  text: "Notifications",
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomListTileWithoutSub(
                  iconData: Icons.image_outlined,
                  text: "Media visibility",
                ),
                const CustomDivider(),
                const CustomListTile(
                  iconData: Icons.lock_outline,
                  sub:
                      "Messages and calls are end-to-end encrypted. Tap to verify.",
                  text: "Encryption",
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomListTile(
                  iconData: Icons.access_time,
                  sub: "Off",
                  text: "Disappearing messages",
                ),
                const SizedBox(
                  height: 15,
                ),
                const ListTile(
                  title: Text(
                    "Chat lock",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Lock and hide this chat on this device.",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(
                      Icons.lock_person,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),
                  trailing: Icon(
                    Icons.toggle_off_outlined,
                    size: 55,
                    color: Colors.grey,
                  ),
                ),
                const CustomDivider(),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  width: double.infinity,
                  height: 45,
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Other phones",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Create group ${data["name"]}",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  leading: const CircleAvatar(
                    backgroundColor: kTabColor,
                    radius: 25,
                    child: Icon(
                      Icons.group_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomDivider(),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  width: double.infinity,
                  height: 45,
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Other phones",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    data['number'],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    'Mobile',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: const SizedBox(
                    width: 90,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomIconProfile(iconData: Icons.chat_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        CustomIconProfile(iconData: Icons.call_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: CustomIconProfile(
                                iconData: Icons.videocam_outlined)),
                      ],
                    ),
                  ),
                ),
                const CustomDivider(),
                const CustomListTileWithoutSub(
                    iconData: Icons.favorite_outline, text: "Add to Favorites"),
                const SizedBox(
                  height: 10,
                ),
                const CustomListTileWithoutSub(
                    iconData: Icons.add_box, text: "Add to list"),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    "Block ${data["name"]}",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red.shade500),
                  ),
                  leading: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(
                      Icons.block_flipped,
                      size: 25,
                      color: Colors.red.shade500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    "Report ${data["name"]}",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red.shade500),
                  ),
                  leading: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(
                      Icons.thumb_down_alt_outlined,
                      size: 25,
                      color: Colors.red.shade500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
