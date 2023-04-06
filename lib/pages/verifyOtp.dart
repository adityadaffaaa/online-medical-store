import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';
import 'package:flutter/services.dart';

class verifyOtp extends StatelessWidget {
  const verifyOtp({super.key});

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
            "Enter the verify code",
            style: heading1.copyWith(color: text1),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "We just send you a verification code via phone +65 556 798 241",
            style: paragraph1.copyWith(color: text3, height: 1.6),
          ),
        ],
      );
    }

    Widget body() {
      return Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 40,
              height: 48,
              child: TextFormField(
                  onChanged: (value) => {
                        if (value.length == 1)
                          {FocusScope.of(context).nextFocus()}
                      },
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  style: heading1.copyWith(
                      fontWeight: FontWeight.w400, color: text3),
                  decoration: InputDecoration(
                      hintText: "0",
                      hintStyle: heading1.copyWith(
                          fontWeight: FontWeight.w400, color: text3),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primary)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(9, 15, 71, 0.1))))),
            ),
            SizedBox(
              width: 40,
              height: 48,
              child: TextFormField(
                  onChanged: (value) => {
                        if (value.length == 1)
                          {FocusScope.of(context).nextFocus()}
                      },
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  style: heading1.copyWith(
                      fontWeight: FontWeight.w400, color: text3),
                  decoration: InputDecoration(
                      hintText: "0",
                      hintStyle: heading1.copyWith(
                          fontWeight: FontWeight.w400, color: text3),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primary)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(9, 15, 71, 0.1))))),
            ),
            SizedBox(
              width: 40,
              height: 48,
              child: TextFormField(
                  onChanged: (value) => {
                        if (value.length == 1)
                          {FocusScope.of(context).nextFocus()}
                      },
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  style: heading1.copyWith(
                      fontWeight: FontWeight.w400, color: text3),
                  decoration: InputDecoration(
                      hintText: "0",
                      hintStyle: heading1.copyWith(
                          fontWeight: FontWeight.w400, color: text3),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primary)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(9, 15, 71, 0.1))))),
            ),
            SizedBox(
              width: 40,
              height: 48,
              child: TextFormField(
                  onChanged: (value) => {
                        if (value.length == 1)
                          {FocusScope.of(context).nextFocus()}
                      },
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  style: heading1.copyWith(
                      fontWeight: FontWeight.w400, color: text3),
                  decoration: InputDecoration(
                      hintText: "0",
                      hintStyle: heading1.copyWith(
                          fontWeight: FontWeight.w400, color: text3),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primary)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(9, 15, 71, 0.1))))),
            ),
            SizedBox(
              width: 40,
              height: 48,
              child: TextFormField(
                  onChanged: (value) => {
                        if (value.length == 1)
                          {FocusScope.of(context).nextFocus()}
                      },
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  style: heading1.copyWith(
                      fontWeight: FontWeight.w400, color: text3),
                  decoration: InputDecoration(
                      hintText: "0",
                      hintStyle: heading1.copyWith(
                          fontWeight: FontWeight.w400, color: text3),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primary)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(9, 15, 71, 0.1))))),
            ),
            SizedBox(
              width: 40,
              height: 48,
              child: TextFormField(
                  onChanged: (value) => {
                        if (value.length == 1)
                          {FocusScope.of(context).nextFocus()}
                      },
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  style: heading1.copyWith(
                      fontWeight: FontWeight.w400, color: text3),
                  decoration: InputDecoration(
                      hintText: "0",
                      hintStyle: heading1.copyWith(
                          fontWeight: FontWeight.w400, color: text3),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primary)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(9, 15, 71, 0.1))))),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        InkWell(
          onTap: () => {Navigator.pushNamed(context, '/login-success')},
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
                "SUBMIT CODE",
                style: heading3.copyWith(color: text2),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          "The verify code will expire in 00:59",
          style: paragraph3.copyWith(color: text3),
        ),
        SizedBox(
          height: 16,
        ),
        InkWell(
          onTap: () => null,
          child: Text(
            "Resend Code",
            style: paragraph3.copyWith(color: primary),
          ),
        ),
      ]);
    }

    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.only(left: 32, right: 32, top: 16, bottom: 24),
        child: Column(
          children: [
            header(),
            SizedBox(
              height: 24,
            ),
            body()
          ],
        ),
      )),
    );
  }
}
