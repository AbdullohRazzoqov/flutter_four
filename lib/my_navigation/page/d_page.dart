import 'package:flutter/material.dart';
//? bunga A pagedan o'tgan bo'lsak A paga bilan o'rnini qalmashtirdi demak bundan oldingi sahifa Home bo'ladi
class MyDPage extends StatelessWidget {
  const MyDPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const  Text("D page")),
    );
  }
}
