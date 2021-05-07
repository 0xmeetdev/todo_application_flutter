import 'package:flutter/material.dart';
import 'package:todo_application/uilt/fonts.dart';

Widget noteNotFound() {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("assets/no_notes_found.png"),
        SizedBox(height: 40),
        Text(
          "No Notes Found",
          style: bigAleartTitleFont(Colors.black),
        ),
        SizedBox(height: 10),
        Text(
          "Create a gorup and it will \nshow up here",
          textAlign: TextAlign.center,
          style: smallAleartFont(Colors.black),
        ),
      ],
    ),
  );
}
