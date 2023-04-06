import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () => {Navigator.pop(context)},
              child: Icon(
                Icons.arrow_back,
                color: text1,
              )),
          SizedBox(
            height: 16,
          ),
          Text(
            "Welcome Back!",
            style: heading1.copyWith(color: text1),
          )
        ],
      );
    }

    Widget body() {
      return Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            decoration:
                BoxDecoration(border: Border(bottom: BorderSide(color: text3))),
            child: Row(
              children: [
                Icon(
                  Icons.person_outline,
                  color: text1,
                ),
                SizedBox(
                  width: 24,
                ),
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration.collapsed(
                      hintText: "Username",
                      hintStyle: paragraph1.copyWith(color: text3)),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            decoration:
                BoxDecoration(border: Border(bottom: BorderSide(color: text3))),
            child: Row(
              children: [
                Icon(
                  Icons.lock_outline_rounded,
                  color: text1,
                ),
                SizedBox(
                  width: 24,
                ),
                Expanded(
                    child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration.collapsed(
                      hintText: "Password",
                      hintStyle: paragraph1.copyWith(color: text3)),
                )),
                InkWell(
                  onTap: () => null,
                  child: Text(
                    'Forgot?',
                    style: paragraph3.copyWith(color: text3),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          InkWell(
            onTap: () =>
                {Navigator.pushReplacementNamed(context, '/main-screen')},
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
                  "LOGIN",
                  style: heading3.copyWith(color: text2),
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget footer() {
      return InkWell(
        onTap: () => null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 16,
              color: text3,
            ),
            SizedBox(
              width: 8,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/create-account');
              },
              child: Text(
                "Don’t have an account? Sign Up",
                style: paragraph4.copyWith(fontSize: 14, color: text3),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.only(left: 32, right: 32, top: 16, bottom: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                SizedBox(
                  height: 24,
                ),
                body(),
              ],
            ),
            footer(),
          ],
        ),
      )),
    );
  }
}
