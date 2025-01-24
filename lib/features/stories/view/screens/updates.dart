import 'package:flutter/material.dart';
import 'package:nti/features/stories/view/widgets/build_channels.dart';

import '../../../../core/widgets/bottomNav.dart';
import '../../../../core/widgets/customAppBar.dart';
import '../../model/channels_model.dart';
import '../../model/statues_model.dart';
import '../widgets/build_statues.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(title: 'Updates'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 10, 15),
              child: Text(
                "Status",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            SizedBox(
              height: 170,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: statuses.length,
                  itemBuilder: (context, index) {
                    return BuildStatus(
                      status: statuses[index],
                    );
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 10, 15),
              child: Row(
                children: [
                  Text(
                    "Channels",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Text(
                    "Explore  >",
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 600,
              child: ListView.builder(
                  itemCount: channels.length,
                  itemBuilder: (context, i) {
                    return BuildChannels(
                      channelModel: channels[i],
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.black,
            child: const Icon(
              Icons.edit,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            child: const Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
