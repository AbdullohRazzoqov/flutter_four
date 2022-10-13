import 'package:flutter/material.dart';
//! GestureDetector => InkWellga o'hshash ayrim farqlari bor
//! bunda bosilgani bilinmaydi bosilish kunsiyalari juda ko'p surish ham mumkin vahokazo
class MyGestureDetector extends StatelessWidget {
  const MyGestureDetector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              color: Colors.green,
              border: Border.all(color: Colors.yellowAccent),
            ),
            child: const Center(
              child: Text("GestureDetector"),
            ),
          ),
          onTap: () {
            debugPrint("Bosild");
          },
        ),
      ),
    );
  }
}
