import 'dart:async';

import 'package:flutter/material.dart';
import '../style/color.dart';

class splashScreen1 extends StatefulWidget {
  const splashScreen1({super.key});

  @override
  State<splashScreen1> createState() => _splashScreen1State();
}

class _splashScreen1State extends State<splashScreen1> {
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/splash-screen2');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: primary,
            image: const DecorationImage(
                image: AssetImage('assets/img/bg-splash.png'),
                opacity: 0.3,
                fit: BoxFit.fill)),
        child: SafeArea(
            child: Center(
          child: Image.asset('assets/img/logo-white.png'),
        )),
      ),
    );
  }
}
