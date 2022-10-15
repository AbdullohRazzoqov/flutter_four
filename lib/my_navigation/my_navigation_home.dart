import 'package:flutter/material.dart';
import 'package:flutter_four/my_navigation/page/b_page.dart';
import 'package:flutter_four/my_navigation/page/c.page.dart';

import 'page/a_page.dart';
//! Sahifadan sahifaga o'tish
//? Navigator.of(context).push  => orqaga qaytadigan qilib o'tadi

class MyNavigationHome extends StatelessWidget {
  const MyNavigationHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //! Boshqa pagega o'tish
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const MyAPage(),
                  ),
                );
              },
              child: const Text("Go MyAPage "),
            ),
            //! Boshqa pagega malumot olib o'tish
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.amber,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MyBPage(
                      information: ("Date keldi"),
                    ),
                  ),
                );
              },
              child: const Text("B page date jo'nat "),
            ),
            //! Bitta orqaga qaytishni qo'lda yozish
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.cyan,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const MyCPage(),
                  ),
                );
              },
              child: const Text("Go MyCPage"),
            ),
          ],
        ),
      ),
    );
  }
}
