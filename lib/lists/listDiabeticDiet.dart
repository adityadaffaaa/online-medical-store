import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/staticData/diabeticDietCardData.dart';
import 'package:flutter_online_medical_store/staticData/featuredBrandsData.dart';
import 'package:flutter_online_medical_store/widgets/diabeticDietCard.dart';
import 'package:flutter_online_medical_store/widgets/featuredBrandsElement.dart';

class listDiabeticDiet extends StatelessWidget {
  const listDiabeticDiet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 164,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: diabeticDietCardDatas.length,
          itemBuilder: (context, index) {
            final data = diabeticDietCardDatas[index];
            return Row(
              children: [
                diabeticDietCard(
                  image: data.image,
                  title: data.title,
                ),
                const SizedBox(
                  width: 16,
                )
              ],
            );
          }),
    );
  }
}
