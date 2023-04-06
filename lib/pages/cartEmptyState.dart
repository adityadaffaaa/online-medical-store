import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';

class cartEmptyState extends StatelessWidget {
  const cartEmptyState({super.key});

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
          Image.asset('assets/img/empty-cart.png'),
          SizedBox(
            height: 50,
          ),
          Text(
            "Whoops",
            style: heading1.copyWith(color: text1),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 250),
            child: Text(
              "Your cart is empty!",
              style: paragraph1.copyWith(color: text3, height: 1.6),
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
