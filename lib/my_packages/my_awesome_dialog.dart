import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class MyAwesomedialog extends StatelessWidget {
  const MyAwesomedialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AwesomeDialog(
                context: context,
                dialogType: DialogType.success,
                title: "Qabul qilindi!",
                desc: "Tasdiqlashni kuting",
                btnCancel: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel"),
                ),
                btnOk: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Ok"),
                )).show();
          },
          child: const Text("Button"),
        ),
      ),
    );
  }
}
