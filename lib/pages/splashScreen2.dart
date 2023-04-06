import 'dart:async';

import 'package:flutter/material.dart';
import '../style/color.dart';
import '../style/textStyle.dart';

class splashScreen2 extends StatefulWidget {
  const splashScreen2({super.key});

  @override
  State<splashScreen2> createState() => _splashScreen2State();
}

class _splashScreen2State extends State<splashScreen2> {
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/walkthrough');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/img/bg-splash-2.png'),
                opacity: 0.6,
                fit: BoxFit.fill)),
        child: SafeArea(
            child: Center(
          child: Image.asset('assets/img/logo-blue.png'),
        )),
      ),
    );
  }
}
