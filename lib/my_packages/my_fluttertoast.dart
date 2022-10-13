import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

//! package => toza flutter, toza dartning o'zida yozilgan bo'lsa 
//! plugins => packageni yozayotgan vaqtda natef kodlardan foydalanilgan bo'lsa
//! plugin qo'shilsa codni boshqatdan ishga tushurish kerak
class MyToast extends StatelessWidget {
  const MyToast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Fluttertoast packages")),
      body: InkWell(
        child: Center(
          child: Container(
            width: 300,
            height: 400,
            color: Colors.cyanAccent,
          ),
        ),onTap: (){Fluttertoast.showToast(
          //? msg => qalqib chiquvchi message
        msg: "This is Center Short Toast",
        //? gravity => koylashuvini berish
        gravity: ToastGravity.CENTER,
        //?rangi
        backgroundColor: Colors.red,
        //text rangi
        textColor: Colors.white,
        //o'lchami
        fontSize: 16.0
    );},
      ),
    );
  }
}
