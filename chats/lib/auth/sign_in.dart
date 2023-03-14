// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, duplicate_ignore, sized_box_for_whitespace

import 'package:chats/auth/rigester.dart';
import 'package:chats/widgets/my_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/sign_controller.dart';

class SignIn extends StatelessWidget {
  SignController controller = Get.find();
  final _auth = FirebaseAuth.instance;
  SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ignore: sized_box_for_whitespace

            Container(
              height: 160.0,
              child: Image.asset('images/2.png'),
            ),

            SizedBox(
              height: 30.0,
            ),

            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                onChanged: ((value) {
                  controller.signemail = value;
                }),
                decoration: InputDecoration(
                    hintText: 'Number or email',
                    prefixIcon: Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        // ignore: prefer_const_constructors
                        borderSide: BorderSide(color: Colors.blue, width: 2))),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                obscureText: true,
                onChanged: ((value) {
                  controller.signpassword = value;
                }),
                decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        // ignore: prefer_const_constructors
                        borderSide: BorderSide(color: Colors.blue, width: 2))),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
              child: MyButton(
                  color: Color.fromARGB(255, 2, 58, 87),
                  title: 'SignIn',
                  onPressed: () async{
                    final user =await _auth.signInWithEmailAndPassword(email: controller.signemail!, password: controller.signpassword!)
                  }),
            ),
            // ignore: prefer_const_literals_to_create_immutables
            Container(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "If you havan't acount ",
                  style: TextStyle(fontSize: 16.0),
                ),
                InkWell(
                  onTap: (() {
                    Get.to(() => Rigester());
                  }),
                  child: Text(
                    'Click here',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ]),
            )
          ]),
    );
  }
}
