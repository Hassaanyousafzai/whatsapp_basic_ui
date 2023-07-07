import 'package:flutter/material.dart';

class userData {
  List<ImageProvider> images = [
    const AssetImage('assets/images/Joey.jfif'),
    const AssetImage('assets/images/chandler.webp'),
    const AssetImage('assets/images/unagi.webp'),
  ];

  List chatData = [
    [
      "Joey Tribbiani",
      "Hey how you doin'",
      "6:00 PM",
    ],
    [
      "Chandler Bing",
      "Could this BE anymore better?",
      "7:00 PM",
    ],
    [
      "Ross Geller",
      "Unagi beech!",
      "8:00 PM",
    ],
  ];
}
