import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/lists/listAllProducts.dart';
import 'package:flutter_online_medical_store/lists/listDiabeticDiet.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';
import 'dart:math' as math;

class categoryListing extends StatelessWidget {
  const categoryListing({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                    onTap: () => {Navigator.pop(context)},
                    child: Icon(
                      Icons.arrow_back,
                      color: text1,
                    )),
                SizedBox(
                  width: 16,
                ),
                Text(
                  "Diabetes Care",
                  style: heading2.copyWith(color: text1),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: AssetImage('assets/img/img-stethoscope.png'),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 120,
                    child: Text(
                      'Save extra on every order',
                      style: heading2.copyWith(color: primary),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Text(
                      "Etiam mollis metus non faucibus sollicitudin. ",
                      style: paragraph1.copyWith(color: text3),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget diabeticDiet() {
      return Container(
        margin: EdgeInsets.only(left: 24),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Diabetic Diet",
              style: heading2.copyWith(
                color: text1,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            listDiabeticDiet()
          ],
        ),
      );
    }

    Widget allProduct() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "All Products",
              style: heading2.copyWith(
                color: text1,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            listAllProduct()
          ],
        ),
      );
    }

    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          header(),
          SizedBox(
            height: 16,
          ),
          diabeticDiet(),
          SizedBox(
            height: 16,
          ),
          allProduct()
        ],
      ),
    ));
  }
}
