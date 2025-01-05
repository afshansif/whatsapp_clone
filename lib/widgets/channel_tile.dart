import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/colors.dart';

class ChannelTile extends StatelessWidget {
  const ChannelTile(
      {super.key,
      required this.url,
      required this.title,
      required this.isFollowed,
      required this.subtitle,
      required this.timeStamp});

  final String url;
  final String title;
  final bool isFollowed;
  final String subtitle;
  final String timeStamp;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,style:const  TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text(
        subtitle,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: isFollowed
          ? Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                timeStamp,
                style: const TextStyle(color: kTabColor, fontSize: 13),
                textAlign: TextAlign.start,
              ),
            )
          : ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll(kTabColor.withOpacity(0.4)),
              ),
              child: const Text(
                "Follow",
                style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold),
              ),
            ),
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.black26,
        foregroundImage: NetworkImage(url),
      ),
    );
  }
}
