// ignore_for_file: prefer_const_constructors

import 'package:chats/auth/rigester.dart';
import 'package:chats/auth/sign_in.dart';
import 'package:chats/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Rigester extends StatelessWidget {
  const Rigester({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                'Rigester',
                style: TextStyle(
                  fontSize: 50,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
            Container(
              height: 180.0,
              child: Image.asset('images/1.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 30.0, left: 15.0, right: 10.0),
              child: TextField(
                textAlign: TextAlign.center,
                onChanged: (value) {},
                decoration: InputDecoration(
                    hintText: 'Enter your email',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 30, left: 15, right: 15),
              child: TextField(
                textAlign: TextAlign.center,
                onChanged: (value) {},
                decoration: InputDecoration(
                    hintText: 'Enter your email',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 30.0, left: 15, right: 15),
              child: TextField(
                textAlign: TextAlign.center,
                onChanged: (value) {},
                decoration: InputDecoration(
                    hintText: 'Enter your email',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MyButton(
                  color: Colors.blue[900]!,
                  title: 'Rigester',
                  onPressed: () {}),
            ),
            // ignore: prefer_const_literals_to_create_immutables
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "If you havent account",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => SignIn());
                      },
                      child: Text('click here', style: TextStyle(fontSize: 20)))
                ],
              ),
            )
          ]),
    );
  }
}
