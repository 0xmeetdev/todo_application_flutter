import 'package:flutter/material.dart';

TextStyle appbarTitleFont(colorType) => TextStyle(
    fontFamily: "OpenSans", fontWeight: FontWeight.w500, color: colorType);

TextStyle bigAleartTitleFont(colorType) => TextStyle(
    fontFamily: "OpenSans", fontSize: 25, fontWeight: FontWeight.w700);

TextStyle smallAleartFont(colorType) => TextStyle(
    fontFamily: "Lora",
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: colorType);

TextStyle addNoteTitleFont(colorType) => TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      fontFamily: "OpenSans",
    );
TextStyle addNoteDataFont(colorType) => TextStyle(
      fontSize: 18,
      fontFamily: "Lora",
      fontWeight: FontWeight.w500,
    );

TextStyle homeNoteTitleFont(colorType) => TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      fontFamily: "OpenSans",
    );
TextStyle homeNoteDataFont(colorType) => TextStyle(
      fontSize: 15,
      fontFamily: "Lora",
      fontWeight: FontWeight.w500,
    );
