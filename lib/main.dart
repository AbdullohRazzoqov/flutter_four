import 'package:flutter/material.dart';
import 'package:flutter_four/my_CustomScrollView/my_sliverappbar.dart';
import 'package:flutter_four/my_gestureDetector/example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home:const   MySliverAppBar(),
    );

  }
}
