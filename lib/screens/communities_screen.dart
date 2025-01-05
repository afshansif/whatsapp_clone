import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/colors.dart';

class CommunitiesScreen extends StatelessWidget {
  const CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Communities',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            height: 200,
            child: Image.asset('assets/images/w1.jpeg'),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: Text(
              textAlign: TextAlign.center,
              "Stay Connected with a community",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 40.0),
            child: Text(
              "Community brings members together in topic-based groups, and make it easy "
              "to get admin announcements. Any community you're added to will appear here.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See example communities',
                  style: TextStyle(
                    color: Color.fromRGBO(137, 207, 240, 3),
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                ),
              ),
              const Icon(
                Icons.chevron_right_outlined,
                size: 15,
                color: Color.fromRGBO(137, 207, 240, 3),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {},
            style:  const ButtonStyle(
              padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 90,vertical: 14)),
                backgroundColor: WidgetStatePropertyAll(kTabColor)),
            child: const Text(
              'Start your community',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
