import 'dart:math';

import 'package:flutter/material.dart';

//! showSnackBar => Qalqib chiquvchi widget
class MyShowSnackBar extends StatelessWidget {
  MyShowSnackBar({super.key});
  final List<Color> _listOfColor = [
    Colors.red,
    Colors.yellowAccent,
    Colors.cyanAccent,
    Colors.deepPurple
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            child: Container(
              margin: const EdgeInsets.all(15),
              color: _listOfColor[Random().nextInt(_listOfColor.length)],
              height: 70,
              child: Center(
                child: Text("Index: $index"),
              ),
            ),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  //? qalqib chiquvchi message defaults 4.0 sekd bo'ldadi uni duration bilan o'zgartirish mumkin
                  duration: const Duration(seconds: 10),
                  //? dismissDirection => qalqib chiqgan massegeni o'nga yoki chapga surish orqali yo'qotish
                  dismissDirection: DismissDirection.horizontal,
                  backgroundColor: Colors.transparent,
                  action: SnackBarAction(
                    label: "Cancel",
                    onPressed: () {},
                  ),
                  content: Text("$index Bosildi"),
                ),
              );
            },
          );
        },
        itemCount: 15,
      ),
    );
  }
}
