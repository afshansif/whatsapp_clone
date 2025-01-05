import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/colors.dart';

import 'package:whatsapp_clone/data/consts_values.dart';
import 'package:whatsapp_clone/widgets/channel_tile.dart';
import 'package:whatsapp_clone/widgets/status.dart';

import 'package:whatsapp_clone/widgets/status_bar.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  final TextStyle textStyle = const TextStyle(
      color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);

  final EdgeInsets textPadding =
      const EdgeInsets.symmetric(horizontal: 16, vertical: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Updates',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded, color: Colors.white),
          ),
          PopupMenuButton(
            position: PopupMenuPosition.under,
            color: kAppBarColor,
            itemBuilder: (ctx) => [
              const PopupMenuItem(child: Text('Create channel')),
              const PopupMenuItem(child: Text('Status privacy')),
              const PopupMenuItem(child: Text('Settings'))
            ],
          )
        ],
      ),
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: textPadding,
            child: Text("Status", style: textStyle),
          ),
          const StatusBar(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: textPadding,
                child: Text("Channels", style: textStyle),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Explore",
                      style: TextStyle(
                          color: kTabColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.chevron_right_outlined,
                      color: kTabColor,
                    ),
                  ),
                ],
              )
            ],
          ),
          const ChannelTile(
            url: bbcNewsUrl,
            title: 'BBC News',
            isFollowed: true,
            subtitle: bbcNewsSub,
            timeStamp: "Yesterday",
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Text(
              "Find channels to follow",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          const ChannelTile(
            url: whatsappUrl,
            title: 'Whatsapp',
            isFollowed: false,
            subtitle: '200M followers',
            timeStamp: "",
          ),
          const SizedBox(
            height: 15,
          ),
          const ChannelTile(
            url: sportsUrl,
            title: 'Sports',
            isFollowed: false,
            subtitle: "130M followers",
            timeStamp: "",
          ),
          const SizedBox(
            height: 15,
          ),
          const ChannelTile(
            url: dawnNewsUrl,
            title: 'Dawn news',
            isFollowed: false,
            subtitle: "150M followers",
            timeStamp: "",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            child: Align(
              alignment: Alignment.centerLeft,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(
                  "Explore more",
                  style:
                      TextStyle(color: kTabColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: FloatingActionButton(

              backgroundColor: kSearchBarColor,
              onPressed: () {},
              child:const  Icon(
                Icons.edit,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 65,
            width: 65,
            child: FloatingActionButton(
              backgroundColor: kTabColor,
              onPressed: () {},
              child:const  Icon(
                Icons.camera_alt,
                size: 28,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
