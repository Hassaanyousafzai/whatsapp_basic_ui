import 'package:flutter/material.dart';

class CallListTileWidget extends StatelessWidget {
  const CallListTileWidget({
    super.key,
    required this.img,
    required this.name,
    required this.num,
  });

  final ImageProvider img;
  final String name;
  final int num;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: img,
      ),
      title: Text(name),
      subtitle: (num % 2 == 0)
          ? const Text("Missed a voice call")
          : const Text("Missed a video call"),
      trailing: (num % 2 == 0)
          ? const Icon(Icons.phone)
          : const Icon(Icons.video_call),
    );
  }
}
