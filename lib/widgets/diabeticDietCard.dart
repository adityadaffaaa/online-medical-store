import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';

class diabeticDietCard extends StatelessWidget {
  const diabeticDietCard({
    super.key,
    required this.image,
    required this.title,
  });
  final image;
  final title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Color(0xffF5F7FA)),
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.fill)),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            child: Text(
              title,
              style: paragraph3.copyWith(color: text1),
            ),
          )
        ],
      ),
    );
  }
}
