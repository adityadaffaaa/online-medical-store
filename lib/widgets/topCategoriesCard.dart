import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';

class topCategoriesCard extends StatelessWidget {
  const topCategoriesCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.gradient1,
      required this.gradient2});

  final icon;
  final title;
  final gradient1;
  final gradient2;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {Navigator.pushNamed(context, '/category-listing')},
      child: Container(
        padding: EdgeInsets.all(8),
        height: 98,
        decoration: BoxDecoration(
            color: text2,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(65, 87, 255, 0.1),
                  blurRadius: 14,
                  offset: Offset(0, 12))
            ]),
        child: Column(
          children: [
            Container(
                height: 48,
                width: 48,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(
                        colors: [Color(gradient1), Color(gradient2)],
                        stops: [0.1, 0.9],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Image.asset(
                  icon,
                )),
            SizedBox(
              height: 6,
            ),
            Text(
              title,
              style: paragraph4.copyWith(color: text1),
            )
          ],
        ),
      ),
    );
  }
}
