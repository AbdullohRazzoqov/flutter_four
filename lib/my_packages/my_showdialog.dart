import 'package:flutter/material.dart';
//! ShowDialog 
class MyShowDialog extends StatelessWidget {
  const MyShowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                // ?barrierDismissible true bo'lsa dealog ochilgandan so'ng ekranning hohlagan qismiga bossa ham yopiladi
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Hello"),
                    content: const Text("Bir nima"),
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Cancel"))
                    ],
                  );
                });
          },
          child: const Text("Show Dialog"),
        ),
      ),
    );
  }
}
