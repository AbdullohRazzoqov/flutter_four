import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Routers"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'GoAPage');
              },
              child: const Text("A page go"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'GoBPage');
              },
              child: const Text("B page go"),
            ),
          ],
        ),
      ),
    );
  }
}
