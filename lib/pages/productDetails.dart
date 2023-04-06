import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';
import 'package:flutter_online_medical_store/widgets/carouselProductDetail.dart';
import 'package:percent_indicator/percent_indicator.dart';

class productDetails extends StatelessWidget {
  const productDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () => {Navigator.pop(context)},
                  child: Icon(
                    Icons.arrow_back,
                    color: text1,
                  )),
              Row(
                children: [
                  InkWell(
                    onTap: () =>
                        {Navigator.pushNamed(context, '/notification')},
                    child: Icon(
                      Icons.notifications_none_sharp,
                      color: text1,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  InkWell(
                    onTap: () => {Navigator.pushNamed(context, "/cart")},
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: text1,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Sugar Free Gold Low Calories",
            style: heading1.copyWith(color: text1, fontSize: 22),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "Etiam mollis metus non purus ",
            style: paragraph1.copyWith(color: text3),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: carouselProductDetail()),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 18,
            ),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$56",
                      style: heading2.copyWith(color: text1),
                    ),
                    Text(
                      "Etiam mollis",
                      style: paragraph1.copyWith(color: text3),
                    )
                  ],
                ),
                InkWell(
                  onTap: () => null,
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_box_outlined,
                        color: primary,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Add to cart",
                        style: paragraph1.copyWith(color: primary),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      );
    }

    Widget packageSize() {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Package size",
                style: heading2.copyWith(
                  color: text1,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Container(
                height: 68,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 164, 27, 0.05),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: ternary)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$106",
                      style: heading2.copyWith(color: ternary),
                    ),
                    Text(
                      "500 pellets",
                      style: paragraph3.copyWith(color: ternary),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                height: 68,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$106",
                      style: heading2.copyWith(color: text1),
                    ),
                    Text(
                      "500 pellets",
                      style: paragraph3.copyWith(color: text1),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                height: 68,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$106",
                      style: heading2.copyWith(color: text1),
                    ),
                    Text(
                      "500 pellets",
                      style: paragraph3.copyWith(color: text1),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      );
    }

    Widget product() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Product Details",
            style: heading2.copyWith(
              color: text1,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
            style: paragraph1.copyWith(color: text3),
          )
        ],
      );
    }

    Widget ratingaAndReview() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Rating and Review",
            style: heading2.copyWith(
              color: text1,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "4.4",
                              style:
                                  heading1.copyWith(color: text1, fontSize: 34),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.star_rate,
                              size: 26,
                              color: ternary,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 120,
                          child: Text("923 Ratings and 257 Reviews",
                              style: paragraph1.copyWith(
                                color: text3,
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                      border: Border(
                          left: BorderSide(
                              color: Color.fromRGBO(0, 0, 0, 0.1), width: 2))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "5",
                                    style: paragraph3.copyWith(color: text3),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Icon(
                                    Icons.star_outlined,
                                    size: 16,
                                    color: ternary,
                                  )
                                ],
                              ),
                              LinearPercentIndicator(
                                lineHeight: 4,
                                width: 126,
                                percent: 0.67,
                                progressColor: primary,
                                barRadius: Radius.circular(32),
                                animation: true,
                                animationDuration: 1000,
                                trailing: new Text(
                                  "67%",
                                  style: paragraph1.copyWith(color: text3),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "4",
                                    style: paragraph3.copyWith(color: text3),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Icon(
                                    Icons.star_outlined,
                                    size: 16,
                                    color: ternary,
                                  )
                                ],
                              ),
                              LinearPercentIndicator(
                                lineHeight: 4,
                                width: 126,
                                percent: 0.2,
                                progressColor: primary,
                                barRadius: Radius.circular(32),
                                animation: true,
                                animationDuration: 1000,
                                trailing: new Text(
                                  "20%",
                                  style: paragraph1.copyWith(color: text3),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "3",
                                    style: paragraph3.copyWith(color: text3),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Icon(
                                    Icons.star_outlined,
                                    size: 16,
                                    color: ternary,
                                  )
                                ],
                              ),
                              LinearPercentIndicator(
                                lineHeight: 4,
                                width: 126,
                                percent: 0.07,
                                progressColor: primary,
                                barRadius: Radius.circular(32),
                                animation: true,
                                animationDuration: 1000,
                                trailing: new Text(
                                  "7%",
                                  style: paragraph1.copyWith(color: text3),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "2",
                                    style: paragraph3.copyWith(color: text3),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Icon(
                                    Icons.star_outlined,
                                    size: 16,
                                    color: ternary,
                                  )
                                ],
                              ),
                              LinearPercentIndicator(
                                lineHeight: 4,
                                width: 126,
                                percent: 0.0,
                                progressColor: primary,
                                barRadius: Radius.circular(32),
                                animation: true,
                                animationDuration: 1000,
                                trailing: new Text(
                                  "0%",
                                  style: paragraph1.copyWith(color: text3),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "1",
                                    style: paragraph3.copyWith(color: text3),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Icon(
                                    Icons.star_outlined,
                                    size: 16,
                                    color: ternary,
                                  )
                                ],
                              ),
                              LinearPercentIndicator(
                                lineHeight: 4,
                                width: 126,
                                percent: 0.02,
                                progressColor: primary,
                                barRadius: Radius.circular(32),
                                animation: true,
                                animationDuration: 1000,
                                trailing: new Text(
                                  "2%",
                                  style: paragraph1.copyWith(color: text3),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      );
    }

    Widget reviews() {
      return Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 22),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Color.fromRGBO(0, 0, 0, 0.1), width: 2))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Erric Hoffman",
                          style: paragraph3.copyWith(color: text1),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star_outlined,
                              size: 18,
                              color: ternary,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "4.2",
                              style: paragraph3.copyWith(color: text3),
                            ),
                          ],
                        )
                      ],
                    ),
                    Text(
                      "05- oct 2020",
                      style: paragraph1.copyWith(color: text3),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas ",
                  style: paragraph1.copyWith(color: text3),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 22),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Color.fromRGBO(0, 0, 0, 0.1), width: 2))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ben Cline",
                          style: paragraph3.copyWith(color: text1),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star_outlined,
                              size: 18,
                              color: ternary,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "4.2",
                              style: paragraph3.copyWith(color: text3),
                            ),
                          ],
                        )
                      ],
                    ),
                    Text(
                      "05- oct 2020",
                      style: paragraph1.copyWith(color: text3),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas ",
                  style: paragraph1.copyWith(color: text3),
                )
              ],
            ),
          ),
        ],
      );
    }

    Widget footer() {
      return InkWell(
        onTap: () => null,
        child: Container(
          margin: EdgeInsets.only(bottom: 24, right: 24, left: 24),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(65, 87, 255, 0.1),
                blurRadius: 14,
                offset: Offset(0, 12))
          ], color: primary, borderRadius: BorderRadius.circular(32)),
          height: 50,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Center(
            child: Text(
              "GO TO CART",
              style: heading3.copyWith(color: text2),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: footer(),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                header(),
                SizedBox(
                  height: 16,
                ),
                packageSize(),
                SizedBox(
                  height: 16,
                ),
                product(),
                SizedBox(
                  height: 16,
                ),
                ratingaAndReview(),
                SizedBox(
                  height: 16,
                ),
                reviews(),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
