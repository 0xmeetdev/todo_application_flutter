import 'package:flutter/material.dart';

pushNextScreen(context, className) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => className));
