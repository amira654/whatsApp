import 'package:flutter/material.dart';

class PopWidget extends StatelessWidget {
  const PopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  PopupMenuButton(
        color: Colors.white,
        itemBuilder: (context) {
          return [
            const PopupMenuItem(child: Text("New group")),
            const PopupMenuItem(child: Text("New broadcast")),
            const PopupMenuItem(child: Text("Linked devices")),
            const PopupMenuItem(child: Text("Starred messages")),
            const PopupMenuItem(child: Text("Settings")),
          ];
        });
  }
}
