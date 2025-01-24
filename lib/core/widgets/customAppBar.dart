import 'package:flutter/material.dart';

import '../../features/home/view/widgets/pop_widget.dart';

AppBar appBar({required String title}) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(
          color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
    ),
    actions: const [
      Icon(
        Icons.camera_alt_outlined,
        color: Colors.white,
      ),
      SizedBox(
        width: 14,
      ),
      Icon(
        Icons.search,
        color: Colors.white,
      ),
      PopWidget(),
    ],
  );
}
