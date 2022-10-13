//! context = _ bitta chiziq
//! index __ ikkita chiziq
//! GridView => ListViewga o'xshash farqi yonma yon elementlarni chiqari adi
//! gradient => bir rangdan boshqa ranglar o'tib ketishini taminlab beruvchi widget
import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: 25,
          //? yontarafga qarab har bir ustunga 3 tadan tashlab suruladi
          // scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //? crossAxisCount => nechta ekanligini yatishimiz uchun
              crossAxisCount: 3),
          itemBuilder: (_, __) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.yellowAccent,
                      Colors.cyanAccent,
                      Colors.blueGrey
                    ],
                    //? tepa o'gndan boshlanib
                    begin: Alignment.topRight,
                    //? past chapda tugaydi
                    end: Alignment.bottomLeft,
                  ),
                  //? Containerni aylan qilish kerak bo'lsa qishimiz mukin
                  shape: BoxShape.circle,
                ),
                width: 100,
                height: 100,
                child: Center(child: Text("$__")),
              ),
            );
          }),
    );
  }
}
