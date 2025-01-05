import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/colors.dart';
import 'package:whatsapp_clone/widgets/profile_picture.dart';

class Status extends StatelessWidget {
  const Status({super.key, required this.url, required this.statusTitle, this.isMe = false});
  final String statusTitle;
  final String url;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 8),
          height: 220,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:const  Color.fromRGBO( 62, 71, 77, 1),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.srcATop,
              ),
              child: !isMe
                  ? Image.asset(
                      'assets/images/$url',
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    )
                  : null,
            ),
          ),
        ),
        Positioned(
          top: 13,
          left: 20,
          child: !isMe
              ? Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: kTabColor, width: 2.5)),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ProfilePicture(url: url, radius: 30),
                  ),
                )
              : Padding(
                  padding:  const EdgeInsets.all(3.0),
                  child: ProfilePicture(url: url, radius: 27),
                ),
        ),
        Positioned(
          top: 190,
          left: 20,
          right: 20,
          child: Text(
            statusTitle,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          top: 46,
          left: 20,
          right: 20,
          child: isMe? Container(
            width: 29,
            height: 29,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color.fromRGBO( 62, 71, 77, 1), width: 2.5)),
            child: const CircleAvatar(
              backgroundColor: kTabColor,
              radius: 15,
              child: Icon(Icons.add, color: Colors.black),
            ),
          ): const SizedBox(),
        ),
      ],
    );
  }
}
