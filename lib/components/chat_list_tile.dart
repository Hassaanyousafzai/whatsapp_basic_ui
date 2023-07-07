import 'package:flutter/material.dart';

class ChatListTileWidget extends StatelessWidget {
  const ChatListTileWidget({
    Key? key,
    required this.img,
    required this.name,
    required this.text,
    required this.time,
  }) : super(key: key);

  final ImageProvider img;
  final String name, text, time;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: img,
      ),
      title: Text(name),
      subtitle: Text(text),
      trailing: Text(time),
    );
  }
}
