import 'package:flutter/material.dart';

import '../../model/channels_model.dart';



class BuildChannels extends StatelessWidget {
  BuildChannels({super.key, required this.channelModel, });

  final ChannelModel channelModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Text(channelModel.time, style: style().copyWith(color: Colors.green)),
      leading: CircleAvatar(
          radius: 30, backgroundImage: NetworkImage(channelModel.image)),
      title: Text(channelModel.name, style: style()),
      subtitle: Text(maxLines: 1, channelModel.msg, style: style()),
    );
  }

  TextStyle style() => const TextStyle(color: Colors.white);
}
