import 'package:flutter/material.dart';

import '../../model/model_home.dart';

class BuildBody extends StatelessWidget {
  BuildBody({super.key, required this.homeModel});

  final HomeModel homeModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Text(homeModel.time, style: style()),
      leading: CircleAvatar(
          radius: 30, backgroundImage: NetworkImage(homeModel.image)),
      title: Text(homeModel.name, style: style()),
      subtitle: Text(maxLines: 1, homeModel.msg, style: style()),
    );
  }

  TextStyle style() => const TextStyle(color: Colors.white);
}
