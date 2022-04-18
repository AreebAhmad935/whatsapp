import 'package:flutter/material.dart';
import 'package:whatsapp/MainScreen/chat_screenlayout/Chat_layout/mainchat_list.dart';
import 'package:whatsapp/colors.dart';

class Mobilescreenlayout extends StatelessWidget {
  const Mobilescreenlayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Contect_list(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: tabColor,
        child: const Icon(Icons.message, color: Colors.grey),
      ),
    );
  }
}
