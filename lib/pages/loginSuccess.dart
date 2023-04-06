import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';

class loginSuccess extends StatelessWidget {
  const loginSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        children: [
          InkWell(
              onTap: () => {Navigator.pop(context)},
              child: Icon(
                Icons.arrow_back,
                color: text1,
              )),
        ],
      );
    }

    Widget body() {
      return Column(
        children: [
          Image.asset('assets/img/logo-login-success.png'),
          SizedBox(
            height: 50,
          ),
          Text(
            "Phone Number Verified",
            style: heading1.copyWith(color: text1),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 250),
            child: Text(
              "Congradulations, your phone number has been verified. You can start using the app",
              style: paragraph1.copyWith(color: text3, height: 1.6),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }

    Widget footer() {
      return InkWell(
        onTap: () => {Navigator.pushReplacementNamed(context, '/main-screen')},
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
              "CONTINUE",
              style: heading3.copyWith(color: text2),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [header(), body(), footer()],
        ),
      )),
    );
  }
}
