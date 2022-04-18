// ignore_for_file: camel_case_types



import 'package:flutter/material.dart';
import 'package:whatsapp/MainScreen/Call-layout/call.dart';

import 'package:whatsapp/MainScreen/Status_layout/status.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/MainScreen/camera_layout/camera.dart';
import 'package:whatsapp/MainScreen/chat_screenlayout/chat_screen_layout.dart';


class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp',style: TextStyle(color: Colors.grey),),
        
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search,color: Colors.grey)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert,color: Colors.grey))
          ],
          // ignore: prefer_const_constructors
          bottom: TabBar(
            indicatorColor: tabColor,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.bold
            ),
            tabs: const [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(text: 'CHATS'),
              Tab(
                text: 'STATUS',
              ),
              Tab(text: 'CALLS'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Camera(),
            Mobilescreenlayout(),
            StatusScreen(),
            CallPage(),
          ],
        ),
      ),
    );
  }
}
