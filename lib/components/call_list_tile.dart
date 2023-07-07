import 'package:flutter/material.dart';

class CallListTileWidget extends StatelessWidget {
  const CallListTileWidget({
    super.key,
    required this.img,
    required this.name,
    required this.text,
    required this.num,
  });

  final ImageProvider img;
  final String name, text;
  final int num;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: img,
      ),
      title: Text(name),
      subtitle: Text(text),
      trailing: (num % 2 == 0)
          ? const Icon(Icons.phone)
          : const Icon(Icons.video_call),
    );
  }
}
