import 'dart:math';

import 'package:flutter/material.dart';


String generateRandomPhoneNumber() {
  final random = Random();
  return '+81 90 ${random.nextInt(1000).toString().padLeft(4, '0')} ${random.nextInt(10000).toString().padLeft(4, '0')}';
}

final List<Map<String, dynamic>> contacts = [
  {
    "name": "Naruto Uzumaki",
    "message": "I'm gonna be Hokage!",
    "time": "10:45 AM",
    "isOnline": true,
    'imageType': 'jpg',
    'lastSeen': 'last seen today at 2:00 AM',
    'callsInfo': [
      {
        "statusCall": Icons.call_made,
        "timeStamp": "Today, 11:45 PM",
        "callType": Icons.videocam_outlined,
        "frequency": 1,
      },
      {
        "statusCall": Icons.call_received,
        "timeStamp": "Yesterday, 11:00 PM",
        "callType": Icons.call,
        "frequency": 2,
      },
    ],
    "number": generateRandomPhoneNumber(),
  },
  {
    "name": "Goku",
    "message": "I am the hope of the universe!",
    "time": "9:30 AM",
    "isOnline": false,
    'imageType': 'jpeg',
    'lastSeen': 'last seen today at 5:00 AM',
    'callsInfo': [
      {
        "statusCall": Icons.call_received,
        "timeStamp": "Today, 8:40 PM",
        "callType": Icons.call,
        "frequency": 2,
      },
      {
        "statusCall": Icons.call_missed,
        "timeStamp": "Yesterday, 8:30 PM",
        "callType": Icons.videocam_outlined,
        "frequency": 3,
      },
    ],
    "number": generateRandomPhoneNumber(),
  },
  {
    "name": "Luffy",
    "message":
    "I don't want to conquer anything. I just think pirates are cool!",
    "time": "Yesterday",
    "isOnline": true,
    'imageType': 'jpeg',
    'lastSeen': 'last seen today at 12:30 AM',
    'callsInfo': [
      {
        "statusCall": Icons.call_missed,
        "timeStamp": "Today, 8:15 PM",
        "callType": Icons.call,
        "frequency": 3,
      },
    ],
    "number": generateRandomPhoneNumber(),
  },
  {
    "name": "Saitama",
    "message":
    "I'm not a hero because I want your approval. I do it because I want to!",
    "time": "7:15 AM",
    "isOnline": false,
    'imageType': 'jpeg',
    'lastSeen': 'last seen today at 3:00 AM',
    'callsInfo': [
      {
        "statusCall": Icons.call_missed,
        "timeStamp": "Today, 6:15 PM",
        "callType": Icons.call,
        "frequency": 3,
      },
      {
        "statusCall": Icons.call_made,
        "timeStamp": "Today, 3:30 PM",
        "callType": Icons.call,
        "frequency": 1,
      },
    ],
    "number": generateRandomPhoneNumber(),
  },
  {
    "name": "Eren Yeager",
    "message": "If you don't fight, you can't win.",
    "time": "6:00 AM",
    "isOnline": true,
    'imageType': 'jpeg',
    'lastSeen': 'last seen today at 10:10 AM',
    'callsInfo': [
      {
        "statusCall": Icons.call_received,
        "timeStamp": "Today, 10:10 AM",
        "callType": Icons.videocam_outlined,
        "frequency": 1,
      },
    ],
    "number": generateRandomPhoneNumber(),
  },
  {
    "name": "Itachi Uchiha",
    "message":
    "Those who forgive themselves, and are able to accept their fate... are the ones who can move forward.",
    "time": "11:20 PM",
    "isOnline": false,
    'imageType': 'jpeg',
    'lastSeen': 'last seen yesterday at 11:50 PM',
    'callsInfo': [
      {
        "statusCall": Icons.call_missed,
        "timeStamp": "Today, 7:15 AM",
        "callType": Icons.call,
        "frequency": 3,
      },
    ],
    "number": generateRandomPhoneNumber(),
  },
  {
    "name": "Light Yagami",
    "message": "I will become the god of a new world.",
    "time": "Yesterday",
    "isOnline": true,
    'imageType': 'jpeg',
    'lastSeen': 'last seen today at 2:00 AM',
    'callsInfo': [
      {
        "statusCall": Icons.call_received,
        "timeStamp": "Yesterday, 11:09 AM",
        "callType": Icons.videocam_outlined,
        "frequency": 2,
      },
      {
        "statusCall": Icons.call_received,
        "timeStamp": "Yesterday, 12:00 PM",
        "callType": Icons.videocam,
        "frequency": 2,
      },
    ],
    "number": generateRandomPhoneNumber(),
  },
  {
    "name": "Roronoa Zoro",
    "message": "When you decide to do something, you do it!",
    "time": "3:45 PM",
    "isOnline": false,
    'imageType': 'jpg',
    'lastSeen': 'last seen today at 8:00 AM',
    'callsInfo': [
      {
        "statusCall": Icons.call_made,
        "timeStamp": "Yesterday, 8:00 AM",
        "callType": Icons.call,
        "frequency": 3,
      },
    ],
    "number": generateRandomPhoneNumber(),
  },
  {
    "name": "Levi Ackerman",
    "message":
    "The only thing we're allowed to do is believe that we won't regret the choice we made.",
    "time": "11:50 AM",
    "isOnline": true,
    'imageType': 'jpg',
    'lastSeen': 'last seen today at 1:12 AM',
    'callsInfo': [
      {
        "statusCall": Icons.call_received,
        "timeStamp": "December 14, 1:12 AM",
        "callType": Icons.videocam_outlined,
        "frequency": 2,
      },
      {
        "statusCall": Icons.call_missed,
        "timeStamp": "October 9, 9:45 PM",
        "callType": Icons.call,
        "frequency": 3,
      },
    ],
    "number": generateRandomPhoneNumber(),
  },
  {
    "name": "Hinata Shoyo",
    "message": "I can’t just give up! I’m not done yet!",
    "time": "Yesterday",
    "isOnline": false,
    'imageType': 'jpeg',
    'lastSeen': 'last seen today at 4:00 AM',
    'callsInfo': [
      {
        "statusCall": Icons.call_missed,
        "timeStamp": "October 2, 4:00 AM",
        "callType": Icons.call,
        "frequency": 1,
      },
    ],
    "number": generateRandomPhoneNumber(),
  },
];
