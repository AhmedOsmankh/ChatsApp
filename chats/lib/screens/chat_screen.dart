// ignore_for_file: prefer_const_constructors, empty_catches, unused_import

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../controller/chat_controller.dart';

class ChatScreen extends StatelessWidget {
  ChatController controller =
      Get.put<ChatController>(ChatController(), permanent: true);
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
                controller.getStreemMessage();
                // Get.back();
              },
              icon: Icon(Icons.close))
        ],
      ),
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StreamBuilder<QuerySnapshot>(
                  stream:
                      controller.fireStore.collection('messege').snapshots(),
                  //snapshots is class from fire base its will we messages be in its
                  builder: ((context, snapshot) {
                    List<Text> messageWidgits = [];

                    if (!snapshot.hasData) {
                      Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    final masseges = snapshot.data!.docs;
                    for (var messege in masseges) {
                      final messegeText = messege.get('text');
                      final messegeSender = messege.get('sender');
                      final messageWidgit =
                          Text('$messegeText - $messegeSender');
                      messageWidgits.add(messageWidgit);
                    }

                    return Expanded(child: ListView(children: messageWidgits));
                  })),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.orange, width: 2.0))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (value) {
                          controller.messageText = value;
                        },
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            hintText: 'write your massege here...',
                            border: InputBorder.none),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          controller.fireStore.collection('messege').add({
                            'text': controller.messageText,
                            'sinder': controller.signInUser.email
                          });
                        },
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
