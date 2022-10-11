import 'package:flutter/material.dart';
//? Stack => Bit widgetning ustiga ikkinchi widgatni qo'yishimiz uchun
//? Chip => Container o'xshash radusli va bu childining o'zgarishiga qarab o'chami ham o'zgaradi
//? Opacity => Tagidagi widget biroz ko'rinsin desak

class ExampleStack extends StatelessWidget {
  const ExampleStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        color: Colors.cyanAccent,
        height: 500,
        width: 350,
        child: Stack(children: [
          Image.network(
            "https://source.unsplash.com/random",
            fit: BoxFit.cover,
          ),
          const Positioned(
            bottom: 15,
            right: 25,
            child: Opacity(
              opacity: 0.3,
              child: Chip(
                backgroundColor: Colors.yellow,
                label: Text("200 \$"),
              ),
            ),
          )
        ]),
      )),
    );
  }
}
