import 'package:flutter/material.dart';


import 'features/home/view/screens/whatsApp.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
      ),
      debugShowMaterialGrid: false,
     debugShowCheckedModeBanner: false,
     // showPerformanceOverlay: true,
      home: const Home(),
    );
  }
}
