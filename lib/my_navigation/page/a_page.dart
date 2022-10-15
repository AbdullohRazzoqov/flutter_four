//! avigator.of(context).pushReplacement => boshqa qavat qo'shmaydi 
//! o'zini qavatini qo'shmoqchi bo'lgan qavat bilan almashtirib qo'yadi

import 'package:flutter/material.dart';
import 'package:flutter_four/my_navigation/page/d_page.dart';

class MyAPage extends StatelessWidget {
  const MyAPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.tealAccent,
        title: const Text(
          "A Page",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) =>const  MyDPage(),
            ),
          );
        },
        child: const Icon(
          Icons.navigate_next,
        ),
      ),
    );
  }
}
