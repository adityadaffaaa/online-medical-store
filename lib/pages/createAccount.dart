import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';

class createAccount extends StatefulWidget {
  const createAccount({super.key});

  @override
  State<createAccount> createState() => _createAccountState();
}

class _createAccountState extends State<createAccount> {
  bool _isObscured = false;
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
            "Create your account",
            style: heading1.copyWith(color: text1),
          )
        ],
      );
    }

    Widget body() {
      return Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide(color: text3)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primary)),
                labelText: "Your Name",
                labelStyle: paragraph1.copyWith(color: text3)),
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide(color: text3)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primary)),
                labelText: "Mobile Number",
                labelStyle: paragraph1.copyWith(color: text3)),
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            decoration: InputDecoration(
                enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide(color: text3)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primary)),
                labelText: "Email",
                labelStyle: paragraph1.copyWith(color: text3)),
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            obscureText: _isObscured,
            decoration: InputDecoration(
                suffixIcon: InkWell(
                    onTap: () => setState(() => {_isObscured = !_isObscured}),
                    child: Icon(
                      _isObscured
                          ? Icons.visibility_off_outlined
                          : Icons.remove_red_eye_outlined,
                      color: text3,
                    )),
                enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide(color: text3)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primary)),
                labelText: "Password",
                labelStyle: paragraph1.copyWith(color: text3)),
          ),
          SizedBox(
            height: 16,
          ),
          InkWell(
            onTap: () => {Navigator.pushNamed(context, '/verify-otp')},
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
                  "CREATE ACCOUNT",
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
              onTap: () => {Navigator.pushReplacementNamed(context, '/login')},
              child: Text(
                "Already have account? Login",
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
                  height: 16,
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
