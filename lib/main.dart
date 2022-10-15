import 'package:flutter/material.dart';
import 'package:flutter_four/routers/router.dart';

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
      //? initialRoute => Boshlanish sahifasi
      initialRoute: "/",onGenerateRoute: RouteGenerator.router.ongenerateRoute,
    );

  }
}
