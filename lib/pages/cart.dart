import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
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
                "Your Cart",
                style: heading2.copyWith(color: text1),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "2 Items in your cart",
                style: paragraph1.copyWith(color: text3),
              ),
              InkWell(
                onTap: () => null,
                child: Row(
                  children: [
                    Icon(Icons.add, color: primary),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Add more",
                      style: paragraph1.copyWith(color: primary),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      );
    }

    Widget itemCart() {
      return Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: AssetImage("assets/img/diabetic-2.png"),
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sugar free gold",
                              style: paragraph2.copyWith(color: text1),
                            ),
                            Text(
                              "bottle of 500 pellets",
                              style: paragraph3.copyWith(color: text3),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Text(
                          "\$ 25",
                          style: heading2.copyWith(color: text1),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.cancel_outlined,
                      color: text3,
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF2F4FF),
                          borderRadius: BorderRadius.circular(32)),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () => null,
                            child: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  color: Color(0xffDFE3FF),
                                  borderRadius: BorderRadius.circular(32)),
                              child: Icon(
                                Icons.remove,
                                color: primary,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "2",
                            style: paragraph2.copyWith(color: text1),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          InkWell(
                            onTap: () => null,
                            child: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  color: Color(0xffDFE3FF),
                                  borderRadius: BorderRadius.circular(32)),
                              child: Icon(
                                Icons.add,
                                color: text2,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: AssetImage("assets/img/diabetic-3.png"),
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sugar free gold",
                              style: paragraph2.copyWith(color: text1),
                            ),
                            Text(
                              "bottle of 500 pellets",
                              style: paragraph3.copyWith(color: text3),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Text(
                          "\$ 25",
                          style: heading2.copyWith(color: text1),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.cancel_outlined,
                      color: text3,
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF2F4FF),
                          borderRadius: BorderRadius.circular(32)),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () => null,
                            child: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  color: Color(0xffDFE3FF),
                                  borderRadius: BorderRadius.circular(32)),
                              child: Icon(
                                Icons.remove,
                                color: primary,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "2",
                            style: paragraph2.copyWith(color: text1),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          InkWell(
                            onTap: () => null,
                            child: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  color: Color(0xffDFE3FF),
                                  borderRadius: BorderRadius.circular(32)),
                              child: Icon(
                                Icons.add,
                                color: text2,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      );
    }

    Widget coupon() {
      return Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.1))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.discount_outlined),
                SizedBox(
                  width: 16,
                ),
                Text(
                  "1 Coupon applied",
                  style: paragraph2.copyWith(color: Color(0xff27AE60)),
                )
              ],
            ),
            Icon(
              Icons.cancel_outlined,
              color: text3,
            ),
          ],
        ),
      );
    }

    Widget paymentSummary() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Payment Summary",
            style: heading2.copyWith(color: text1),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Order Total",
                style: paragraph1.copyWith(color: text3),
              ),
              Text(
                '\$228.80',
                style: heading3.copyWith(color: text1),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Items Discount",
                style: paragraph1.copyWith(color: text3),
              ),
              Text(
                '-\$28.80',
                style: heading3.copyWith(color: text1),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Coupon Discount",
                style: paragraph1.copyWith(color: text3),
              ),
              Text(
                '-\$15.80',
                style: heading3.copyWith(color: text1),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Shipping",
                style: paragraph1.copyWith(color: text3),
              ),
              Text(
                'Free',
                style: heading3.copyWith(color: text1),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)))),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: paragraph1.copyWith(color: text1),
              ),
              Text(
                '\$185.00',
                style: heading3.copyWith(color: text1),
              )
            ],
          ),
        ],
      );
    }

    Widget footer() {
      return InkWell(
        onTap: () => {Navigator.pushNamed(context, '/checkout')},
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
              "Place Order @ \$185.00",
              style: heading3.copyWith(color: text2),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  header(),
                  SizedBox(
                    height: 8,
                  ),
                  itemCart(),
                  SizedBox(
                    height: 16,
                  ),
                  coupon(),
                  SizedBox(
                    height: 16,
                  ),
                  paymentSummary(),
                ],
              ),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
