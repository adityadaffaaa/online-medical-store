import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/staticData/dealsOfTheDayData.dart';
import 'package:flutter_online_medical_store/widgets/dealsOfTheDayCard.dart';

class listDealsOfTheDay extends StatelessWidget {
  const listDealsOfTheDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: dealsOfTheDayDatas.length,
          itemBuilder: (context, index) {
            final data = dealsOfTheDayDatas[index];
            return Row(
              children: [
                dealsOfTheDayCard(
                    image: data.image,
                    title: data.title,
                    price: data.price,
                    rate: data.rate),
                const SizedBox(
                  width: 16,
                )
              ],
            );
          }),
    );
  }
}
