import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  "Notification",
                  style: heading2.copyWith(color: text1),
                )
              ],
            ),
            InkWell(
              onTap: () => null,
              child: Text(
                "Clear All",
                style: paragraph1.copyWith(color: primary),
              ),
            )
          ],
        ),
      );
    }

    Widget notif() {
      return Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star_border_purple500_rounded,
                      color: text3,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 280,
                          child: Text(
                            "We know that — for children AND adults — learning is most effective when it is",
                            style: paragraph3.copyWith(
                                color: text1, fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Aug 12, 2020 at 12:08 PM",
                          style: paragraph3.copyWith(color: text3),
                        )
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.circle,
                  size: 8,
                  color: Colors.red,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.calendar_today_rounded,
                      color: text3,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 280,
                          child: Text(
                            "The future of professional learning is immersive, communal experiences for ",
                            style: paragraph3.copyWith(
                              color: text1,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Aug 12, 2020 at 12:08 PM",
                          style: paragraph3.copyWith(color: text3),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.notifications_none_outlined,
                      color: text3,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 280,
                          child: Text(
                            "With this in mind, Global Online Academy created the Blended Learning Design ",
                            style: paragraph3.copyWith(
                              color: text1,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Aug 12, 2020 at 12:08 PM",
                          style: paragraph3.copyWith(color: text3),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.notifications_none_outlined,
                      color: text3,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 280,
                          child: Text(
                            "With this in mind, Global Online Academy created the Blended Learning Design ",
                            style: paragraph3.copyWith(
                              color: text1,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Aug 12, 2020 at 12:08 PM",
                          style: paragraph3.copyWith(color: text3),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.notifications_none_outlined,
                      color: text3,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 280,
                          child: Text(
                            "With this in mind, Global Online Academy created the Blended Learning Design ",
                            style: paragraph3.copyWith(
                              color: text1,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Aug 12, 2020 at 12:08 PM",
                          style: paragraph3.copyWith(color: text3),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [header(), notif()],
      )),
    );
  }
}
