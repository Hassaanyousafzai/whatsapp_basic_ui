import 'package:flutter/material.dart';

class StatusListTileWidget extends StatelessWidget {
  const StatusListTileWidget({
    super.key,
    required this.img,
    required this.name,
    required this.time,
  });

  final ImageProvider img;
  final String name, time;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.green,
            width: 3,
          ),
        ),
        child: CircleAvatar(
          backgroundImage: img,
        ),
      ),
      title: Text(name),
      subtitle: Text(time),
    );
  }
}
