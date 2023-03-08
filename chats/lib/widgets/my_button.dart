// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unnecessary_import

import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter, duplicate_import

class MyButton extends StatelessWidget {
  MyButton({required this.color, required this.title, required this.onPressed});
  final Color color;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        elevation: 5,
        color: color,
        borderRadius: BorderRadius.circular(10.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42,
          // ignore: prefer_const_constructors
          child: Text(title, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
