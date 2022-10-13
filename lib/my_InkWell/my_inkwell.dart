//!InkWell => Istalgan wedgetga bosilish qulayligini berish mumkin.
import 'package:flutter/material.dart';

class MyInkWell extends StatelessWidget {
  const MyInkWell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            child: Container(margin: EdgeInsets.all(15),
              color: Colors.yellow,
              height: 70,
              child: Center(
                child: Text("Index: $index"),
              ),
            ),
            onTap: () {},
          );
        },
      itemCount: 15,),
    );
  }
}
