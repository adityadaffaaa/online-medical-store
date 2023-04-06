import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    Widget body() {
      return Container(
        width: double.infinity,
        child: Column(
          children: [
            Image.asset('assets/img/illustration-welcome.png'),
            SizedBox(
              height: 34,
            ),
            Column(
              children: [
                Text(
                  'Welcome to Medtech',
                  style: heading1.copyWith(color: text1),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 258),
                  child: Text(
                    'Do you want some help with your health to get better life?',
                    style: paragraph1.copyWith(color: text3, height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget footer() {
      return Column(
        children: [
          InkWell(
            onTap: () => {Navigator.pushNamed(context, '/create-account')},
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(65, 87, 255, 0.1),
                    blurRadius: 14,
                    offset: Offset(0, 12))
              ], color: primary, borderRadius: BorderRadius.circular(32)),
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Center(
                child: Text(
                  "SIGN UP WITH EMAIL",
                  style: heading3.copyWith(color: text2),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => null,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  border: Border.all(
                      width: 1, color: Color.fromRGBO(9, 15, 71, 0.1))),
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/img/logo-facebook.png'),
                  SizedBox(
                    width: 24,
                  ),
                  InkWell(
                    onTap: () => null,
                    child: Text(
                      "CONTINUE WITH FACEBOOK",
                      style: paragraph2.copyWith(color: text1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => null,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  border: Border.all(
                      width: 1, color: Color.fromRGBO(9, 15, 71, 0.1))),
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/img/logo-google.png'),
                  SizedBox(
                    width: 24,
                  ),
                  Text(
                    "CONTINUE WITH GOOGLE",
                    style: paragraph2.copyWith(color: text1),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Text(
              "LOGIN",
              style: paragraph3.copyWith(color: text3),
            ),
          )
        ],
      );
    }

    return Scaffold(
        body: SafeArea(
            child: Container(
      margin: EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          body(),
          SizedBox(
            height: 32,
          ),
          footer()
        ],
      ),
    )));
  }
}
