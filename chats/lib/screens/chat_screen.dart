// ignore_for_file: prefer_const_constructors, empty_catches

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../controller/chat_controller.dart';

class ChatScreen extends StatelessWidget {
  ChatController controller = Get.find();
  ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Image.asset(
            'images/2.png',
            height: 25,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text('MassegeMe')
        ]),
        actions: [
          IconButton(
              onPressed: () {
                controller.auth.signOut();
                Get.back();
              },
              icon: Icon(Icons.close))
        ],
      ),
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.orange, width: 2.0))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            hintText: 'write your massege here...',
                            border: InputBorder.none),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'send',
                          style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.blue[600],
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
