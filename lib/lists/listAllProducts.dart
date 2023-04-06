import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/staticData/allProductsCardData.dart';
import 'package:flutter_online_medical_store/widgets/allProductsCard.dart';

class listAllProduct extends StatelessWidget {
  const listAllProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: allProductsCardDatas.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 16.0, mainAxisSpacing: 14.0),
      itemBuilder: (BuildContext context, int index) {
        final data = allProductsCardDatas[index];
        return allProductsCard(
            image: data.image,
            title: data.title,
            price: data.price,
            label: data.label,
            labelText: data.labelText,
            labelColor: data.labelColor,
            rate: data.rate);
      },
    );
  }
}
