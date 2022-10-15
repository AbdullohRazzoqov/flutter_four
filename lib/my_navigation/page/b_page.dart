import 'package:flutter/material.dart';
import 'package:flutter_four/my_navigation/page/d_page.dart';

//! Navigator.pushAndRemoveUntil() => bundan oldin qancha qavat bo'lsa o'chirib tashladi
class MyBPage extends StatelessWidget {
  String? information;
  MyBPage({Key? key, this.information}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          information.toString(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        highlightElevation: 50,
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (_) => const MyDPage(),
              ),
              //? return qilayotganda o'zi bilan nima olib ketsin
              (route) => false);
        },
        child:const  Icon(Icons.navigate_next),
      ),
    );
  }
}
