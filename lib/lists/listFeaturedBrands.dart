import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/staticData/featuredBrandsData.dart';
import 'package:flutter_online_medical_store/widgets/featuredBrandsElement.dart';

class listFeaturedBrands extends StatelessWidget {
  const listFeaturedBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: featuredBrandsDatas.length,
          itemBuilder: (context, index) {
            final data = featuredBrandsDatas[index];
            return Row(
              children: [
                featuredBrandsElement(
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
