import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/lists/listDealsOfTheDay.dart';
import 'package:flutter_online_medical_store/lists/listFeaturedBrands.dart';
import 'package:flutter_online_medical_store/lists/listTopCategories.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';
import 'package:flutter_online_medical_store/widgets/carouselHome.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final double widthSearchBar = 350;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              padding: EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 45),
              clipBehavior: Clip.none,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/img/bg-header-home.png'),
                      fit: BoxFit.fill),
                  color: primary,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(65, 87, 255, 0.1),
                                blurRadius: 14,
                                offset: Offset(0, 12))
                          ]),
                          child: Image.asset('assets/img/account-home.png')),
                      Row(
                        children: [
                          InkWell(
                            onTap: () =>
                                {Navigator.pushNamed(context, '/notification')},
                            child: Icon(
                              Icons.notifications_none_sharp,
                              color: text2,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          InkWell(
                            onTap: () =>
                                {Navigator.pushNamed(context, '/cart')},
                            child: Icon(
                              Icons.shopping_bag_outlined,
                              color: text2,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, Ben",
                        style: heading1.copyWith(color: text2),
                      ),
                      Text("Welcome to Medtech",
                          style: heading4.copyWith(color: text2)),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
                bottom: -20,
                child: Container(
                  // margin: EdgeInsets.symmetric(horizontal: 24),
                  width: 350,
                  decoration: BoxDecoration(
                      color: text2,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(65, 87, 255, 0.1),
                            blurRadius: 14,
                            offset: Offset(0, 12))
                      ]),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: text3,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: TextFormField(
                        decoration: InputDecoration.collapsed(
                            hintText: "Search Medicine & Healthcare products",
                            hintStyle: paragraph3.copyWith(color: text3)),
                      )),
                    ],
                  ),
                ))
          ]);
    }

    Widget topCategories() {
      return Column(
        children: [
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 24),
                  child: Text(
                    "Top Categories",
                    style: heading2.copyWith(color: text1),
                  )),
            ],
          ),
          listTopCategories()
        ],
      );
    }

    Widget carouselSlider() {
      return Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
          carouselHome(),
        ]),
      );
    }

    Widget dealsOfTheDay() {
      return Container(
        margin: EdgeInsets.only(left: 24),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Deals Of The Day',
                    style: heading2.copyWith(color: text1),
                  ),
                  InkWell(
                    child: Text(
                      "More",
                      style: paragraph3.copyWith(color: primary),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            listDealsOfTheDay()
          ],
        ),
      );
    }

    Widget featuredBrands() {
      return Container(
        margin: EdgeInsets.only(left: 24),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Featured Brands',
                  style: heading2.copyWith(color: text1),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            listFeaturedBrands()
          ],
        ),
      );
    }

    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        header(),
        SizedBox(
          height: 48,
        ),
        topCategories(),
        carouselSlider(),
        SizedBox(
          height: 24,
        ),
        dealsOfTheDay(),
        SizedBox(
          height: 24,
        ),
        featuredBrands(),
        SizedBox(
          height: 24,
        )
      ],
    );
  }
}
