import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/staticData/topCategoriesData.dart';
import 'package:flutter_online_medical_store/widgets/topCategoriesCard.dart';

class listTopCategories extends StatelessWidget {
  const listTopCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24),
      height: 130,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: CategoriesDatas.length,
          itemBuilder: (context, index) {
            final data = CategoriesDatas[index];
            return Row(
              children: [
                topCategoriesCard(
                    icon: data.icon,
                    title: data.title,
                    gradient1: data.gradient1,
                    gradient2: data.gradient2),
                const SizedBox(
                  width: 10,
                )
              ],
            );
          }),
    );
  }
}
