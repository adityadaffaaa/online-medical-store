import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';

class dealsOfTheDayCard extends StatelessWidget {
  const dealsOfTheDayCard(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      required this.rate});

  final image;
  final title;
  final price;
  final rate;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => null,
      child: Container(
        width: 180,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            color: text2,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(65, 87, 255, 0.1),
                  blurRadius: 14,
                  offset: Offset(0, 12))
            ]),
        child: Column(
          children: [
            Container(
              color: Color(0xffEEEEF0),
              child: Center(
                child: Image.asset(image),
              ),
            ),
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
