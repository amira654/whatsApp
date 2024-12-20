
import 'package:flutter/material.dart';

import '../../model/statues_model.dart';

class BuildStatus extends StatelessWidget {

  BuildStatus({ required this.status});

  final StatusModel status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
      child: Container(
        width: 110,
        height: 180,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(status.backGroundImage),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(backgroundImage: NetworkImage(status.imageUrl),radius: 25),
              const SizedBox(height: 75),
              Text(status.userName,style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
}