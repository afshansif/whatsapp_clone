import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/status.dart';

import '../data/contact_info.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const Status(
            url: "self.jpg",
            statusTitle: 'Add status',
            isMe: true,
          ),
          SizedBox(
            height: 230,
            child: ListView.builder(
              shrinkWrap: true,
              physics:const  NeverScrollableScrollPhysics(),
              itemCount: contacts.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, item) {
                final data = contacts[item];
                final url = "${data['name']}.${data['imageType']}";
                return Status(
                  url: url,
                  statusTitle: data['name'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
