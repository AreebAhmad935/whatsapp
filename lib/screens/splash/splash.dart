import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/MainScreen/home/home.dart';
import 'package:whatsapp/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Home_Screen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, //it takes all the space on screen
        height: double.infinity,
        decoration: const BoxDecoration(color: backgroundColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Image(
              image: AssetImage('assets/logo.png'),
              height: 100.0,
              width: 100.0,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'WhatsApp',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
