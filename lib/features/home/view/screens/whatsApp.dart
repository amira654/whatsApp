import 'package:flutter/material.dart';
import 'package:nti/features/home/model/model_home.dart';
import 'package:nti/features/home/view/widgets/build_body.dart';

import '../widgets/pop_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "WhatsApp",
            style: TextStyle(
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
        ),
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return BuildBody(
                homeModel: list[index],
              );
            }));
  }
}
