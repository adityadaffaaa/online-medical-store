import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';
import 'dart:math' as math;

class allProductsCard extends StatelessWidget {
  allProductsCard(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      required this.label,
      required this.labelText,
      required this.labelColor,
      required this.rate});
  String image;
  String title;
  int price;
  double rate;
  bool label;
  String labelText;
  int labelColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {Navigator.pushNamed(context, '/product-details')},
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border:
                Border.all(width: 1, color: Color.fromRGBO(9, 15, 71, 0.1))),
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 158,
                decoration: BoxDecoration(
                  color: Color(0xffF5F7FA),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Image.asset(image),
                ),
              ),
              Positioned(
                  left: -45,
                  top: -15,
                  child: Transform.rotate(
                    angle: -math.pi / 4,
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 32, bottom: 8, left: 42, right: 42),
                      decoration: BoxDecoration(
                          color:
                              label ? Color(labelColor) : Colors.transparent),
                      child: Text(
                        label ? labelText : "",
                        style: paragraph2.copyWith(color: text2),
                      ),
                    ),
                  ))
            ]),
            Container(
              padding: EdgeInsets.only(top: 14, left: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      constraints: BoxConstraints(maxWidth: 130),
                      child: (Text(
                        title,
                        style: paragraph3.copyWith(color: text1),
                      ))),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${price}',
                        style: paragraph2.copyWith(color: text1),
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: ternary,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32),
                                bottomLeft: Radius.circular(32))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: text2,
                              size: 16,
                            ),
                            Text(
                              '${rate}',
                              style: paragraph3.copyWith(
                                  color: text2, fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
