import 'package:flutter/material.dart';
import 'package:flutter_four/my_navigation/my_navigation_home.dart';

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
      home:const   MyNavigationHome(),
    );

  }
}
