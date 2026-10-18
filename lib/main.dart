import 'package:aut_cse464_class_project/screens/counter_page.dart';
import 'package:aut_cse464_class_project/screens/main_app_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const IUBApp());
}

class IUBApp extends StatelessWidget {
  const IUBApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        primaryColor: Colors.pink,
      ),
      home: MainAppHome(),
    );
  }
}



