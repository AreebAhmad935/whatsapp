import 'package:flutter/material.dart';
import 'package:whatsapp/MainScreen/chat_screenlayout/Chat_layout/chatinfo.dart';
import 'package:whatsapp/MainScreen/chat_screenlayout/Chat_layout/messagecard.dart';
import 'package:whatsapp/MainScreen/chat_screenlayout/Chat_layout/senderchat.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
        return SenderMessageCard(
          message: messages[index]['text'].toString(),
          date: messages[index]['time'].toString(),
        );
      },
    );
  }
}
