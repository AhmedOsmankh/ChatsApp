// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, duplicate_ignore, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../widgets/my_button.dart';

class WellComeScreen extends StatelessWidget {
  const WellComeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          children: [
            Image.asset(
              'images/images.png',
              fit: BoxFit.contain,
            ),
            Text(
              'WellCome',
              style: TextStyle(fontSize: 30.0, color: Colors.yellow[900]),
            ),
            MyButton(
              color: Colors.yellow,
              title: 'Sign in',
              onPressed: () {},
            ),
            MyButton(color: Colors.blue, title: 'Rigester', onPressed: () {})
          ],
        )
      ],
    ));
  }
}
