import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';

class featuredBrandsElement extends StatelessWidget {
  const featuredBrandsElement(
      {super.key, required this.image, required this.title});

  final image;
  final title;
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    // TODO: implement debugFillProperties
    super.debugFillProperties(properties);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => null,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: text2,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(65, 87, 255, 0.1),
                      blurRadius: 14,
                      offset: Offset(0, 12))
                ]),
            child: Image.asset(image),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        SizedBox(
          width: 60,
          child: Text(
            title,
            style: paragraph3.copyWith(color: text1),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
