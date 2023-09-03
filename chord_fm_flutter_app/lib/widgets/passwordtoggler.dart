import 'package:flutter/material.dart';
bool passwordobsured=true;
@override
Widget togglePassword(){
  return IconButton(onPressed:(){
    setState(() {
      passwordobsured=!passwordobsured;
    });
  }, icon:passwordobsured ?Icon(Icons.visibility_off):Icon(Icons.visibility),color: Colors.grey,);
}

void setState(Null Function() param0) {
}