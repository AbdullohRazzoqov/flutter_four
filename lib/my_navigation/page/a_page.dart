import 'package:flutter/material.dart';
class MyAPage extends StatelessWidget {
  const MyAPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,elevation: 0.0,
        backgroundColor: Colors.tealAccent,
        title: const Text(
          "A Page",
        ),
      ),
    );
  }
}
