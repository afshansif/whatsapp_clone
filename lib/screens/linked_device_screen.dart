import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/colors.dart';

class LinkedDeviceScreen extends StatelessWidget {
  const LinkedDeviceScreen({super.key});

  final headText = 'Use WhatsApp \non other devices';
  final subText =
      "You can link other devices to this account, including Window, Mac and Web. ";

  @override
  Widget build(BuildContext context) {
    const imageSize = 230.0;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Linked devices",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Divider(
                color: Colors.grey.shade800,
                thickness: 0.4,
                endIndent: 30,
                height: 1,
              ),
              Center(
                child: Image.asset(
                  width: imageSize,
                  height: imageSize,
                  'assets/images/linkedDeviceImage.jpeg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80, right: 80, bottom: 27),
                child: Text(
                  headText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 27),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: subText,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const TextSpan(
                        text: "Learn more",
                        style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    padding: WidgetStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 140, vertical: 13)),
                    backgroundColor: WidgetStatePropertyAll(kTabColor)),
                child: const Text(
                  "Link a device",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 0.0, vertical: 28),
                      child: Icon(
                        Icons.lock_outline,
                        size: 17,
                        color: Colors.grey,
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7.0, vertical: 28),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "Your personal messages are ",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "end-to-end encrypted",
                                style: TextStyle(
                                    color: kTabColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: " on all your devices.",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
