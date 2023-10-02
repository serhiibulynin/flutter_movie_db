import 'package:flutter/material.dart';

abstract class AppButtonStyle {
  // final color = const Color(0xFF01B4D4);

  static const ButtonStyle linkButton = ButtonStyle(
      foregroundColor: MaterialStatePropertyAll(Color(0xFF01B4D4)),
      textStyle: MaterialStatePropertyAll(
          TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
      padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      )));
}
