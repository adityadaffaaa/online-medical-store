import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/pages/welcome.dart';
import 'package:flutter_online_medical_store/style/color.dart';
import 'package:flutter_online_medical_store/style/textStyle.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class walkThrough extends StatelessWidget {
  const walkThrough({super.key});

  final pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xff090F47)),
      bodyTextStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color.fromRGBO(9, 15, 71, 0.45)),
      imagePadding: EdgeInsets.only(top: 70));

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      onDone: () {
        Navigator.pushReplacementNamed(context, '/welcome');
      },
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: true,
      back: Icon(Icons.arrow_back),
      skip: Text(
        "Skip",
        style: paragraph3.copyWith(color: text3),
      ),
      next: Text(
        "Next",
        style: paragraph3.copyWith(color: primary),
      ),
      done: Text(
        "Done",
        style: paragraph3.copyWith(color: primary),
      ),
      dotsDecorator: DotsDecorator(
        size: Size(4, 4),
        color: text3,
      ),
      dotsFlex: 3,
      pages: [
        PageViewModel(
            title: "View and buy Medicine online",
            body:
                "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
            image: Image.asset("assets/img/illustration-walkthrough1.png"),
            decoration: pageDecoration),
        PageViewModel(
            title: "Online medical & Healthcare",
            body:
                "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
            image: Image.asset("assets/img/illustration-walkthrough2.png"),
            decoration: pageDecoration),
        PageViewModel(
            title: "Get Delivery on time",
            body:
                "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
            image: Image.asset("assets/img/illustration-walkthrough3.png"),
            decoration: pageDecoration),
      ],
    );
  }
}
