import 'package:flutter/material.dart';

import 'package:whatsapp_clone/data/contact_info.dart';
import 'package:whatsapp_clone/widgets/profile_picture.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        final data = contacts[index];
        final url = '${data['name']}.${data['imageType']}';
        final callData = data['callsInfo'][0];
        return Padding(
          padding: const EdgeInsets.only(left: 7, bottom: 17.0),
          child: ListTile(
            leading: ProfilePicture(url: url, radius: 25),
            title: Text(
              data['name'],
              style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
            ),
            subtitle: Row(
              children: [
                Icon(
                  callData['statusCall'],
                  size: 20,
                  color: callData['statusCall'] == Icons.call_missed
                      ? Colors.red
                      : Colors.green,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(callData['timeStamp'], style: const TextStyle(color: Colors.grey,fontSize: 16),)
              ],
            ),
            trailing: Icon(callData['callType'],color: Colors.white,),
          ),
        );
      },
    );
  }
}
