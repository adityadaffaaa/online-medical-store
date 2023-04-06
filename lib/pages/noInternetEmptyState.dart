import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';

class noInternetEmptyState extends StatelessWidget {
  const noInternetEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        children: [
          InkWell(
              onTap: () => null,
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
          Image.asset('assets/img/no-network.png'),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 250),
            child: Text(
              "No network connection",
              style: paragraph1.copyWith(color: text3, height: 1.6),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () => null,
            child: Text(
              "Try Again",
              style: paragraph1.copyWith(color: primary, height: 1.6),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }

    Widget footer() {
      return Container();
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
