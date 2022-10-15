import 'package:flutter/material.dart';

class MyBPage extends StatelessWidget {
  String? information;
  MyBPage({Key? key, this.information}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(information.toString())),
    );
  }
}
