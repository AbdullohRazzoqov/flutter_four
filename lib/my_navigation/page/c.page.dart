import 'package:flutter/material.dart';

class MyCPage extends StatelessWidget {
  const MyCPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("C page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //? Tugma bilan ham qaytish imkonini beradi
          Navigator.pop(context);
        },
        child:const  Icon(Icons.arrow_back),
      ),
    );
  }
}
