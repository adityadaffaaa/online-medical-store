import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/pages/cart.dart';
import 'package:flutter_online_medical_store/pages/cartEmptyState.dart';
import 'package:flutter_online_medical_store/pages/categoryListing.dart';
import 'package:flutter_online_medical_store/pages/checkout.dart';
import 'package:flutter_online_medical_store/pages/createAccount.dart';
import 'package:flutter_online_medical_store/pages/login.dart';
import 'package:flutter_online_medical_store/pages/loginSuccess.dart';
import 'package:flutter_online_medical_store/pages/mainScreen.dart';
import 'package:flutter_online_medical_store/pages/noInternetEmptyState.dart';
import 'package:flutter_online_medical_store/pages/notification.dart';
import 'package:flutter_online_medical_store/pages/productDetails.dart';
import 'package:flutter_online_medical_store/pages/splashScreen1.dart';
import 'package:flutter_online_medical_store/pages/splashScreen2.dart';
import 'package:flutter_online_medical_store/pages/success.dart';
import 'package:flutter_online_medical_store/pages/verifyOtp.dart';
import 'package:flutter_online_medical_store/pages/walkthrough.dart';
import 'package:flutter_online_medical_store/pages/welcome.dart';

void main() => runApp(const MedicalStore());

class MedicalStore extends StatelessWidget {
  const MedicalStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Online Medical Store",
      initialRoute: '/',
      routes: {
        '/': (context) => const splashScreen1(),
        '/splash-screen2': (context) => const splashScreen2(),
        '/walkthrough': (context) => const walkThrough(),
        '/welcome': (context) => const welcome(),
        '/login': (context) => const login(),
        '/create-account': (context) => const createAccount(),
        '/verify-otp': (context) => const verifyOtp(),
        '/login-success': (context) => const loginSuccess(),
        '/main-screen': (context) => const mainScreen(),
        '/category-listing': (context) => const categoryListing(),
        '/product-details': (context) => const productDetails(),
        '/cart': (context) => const cart(),
        '/checkout': (context) => const checkout(),
        '/success': (context) => const success(),
        '/notification': (context) => const notification(),
        '/cart-empty': (context) => const cartEmptyState(),
        '/no-internet': (context) => const noInternetEmptyState()
      },
      // home: walkThrough()
    );
  }
}
