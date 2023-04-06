import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';

class myProfile extends StatelessWidget {
  const myProfile({super.key});

  Widget header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Profile",
          style: heading2.copyWith(color: text1),
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(65, 87, 255, 0.1),
                      blurRadius: 14,
                      offset: Offset(0, 12))
                ]),
                child: Image.asset("assets/img/account-myprofile.png")),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, Ben Cline",
                  style: heading2.copyWith(color: text1),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Welcome to Medtech",
                  style: paragraph1.copyWith(color: text3),
                )
              ],
            )
          ],
        )
      ],
    );
  }

  Widget menu() {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.document_scanner,
              color: text3,
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Private Account",
                      style: heading2.copyWith(
                          color: text3, fontWeight: FontWeight.w300),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.medical_services_outlined,
              color: text3,
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Consults",
                      style: heading2.copyWith(
                          color: text3, fontWeight: FontWeight.w300),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.receipt_long_outlined,
              color: text3,
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Order",
                      style: heading2.copyWith(
                          color: text3, fontWeight: FontWeight.w300),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.access_time,
              color: text3,
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Billing",
                      style: heading2.copyWith(
                          color: text3, fontWeight: FontWeight.w300),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.question_mark_outlined,
              color: text3,
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "FAQ",
                      style: heading2.copyWith(
                          color: text3, fontWeight: FontWeight.w300),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.settings,
              color: text3,
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Settings",
                      style: heading2.copyWith(
                          color: text3, fontWeight: FontWeight.w300),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children: [
          header(),
          SizedBox(
            height: 42,
          ),
          menu()
        ],
      ),
    ));
  }
}
