import 'package:flutter/material.dart';
import 'package:flutter_online_medical_store/pages/screens/home.dart';
import 'package:flutter_online_medical_store/pages/screens/myProfile.dart';
import 'package:flutter_online_medical_store/style/color.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  int selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget bottomNav() {
    return BottomNavigationBar(
        backgroundColor: text2,
        currentIndex: selectedIndex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Container(
                  child: Icon(Icons.home_outlined,
                      color: selectedIndex == 0 ? primary : text3)),
              label: ''),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () => {Navigator.pushNamed(context, '/notification')},
                child: Container(
                    child: Icon(
                  Icons.notifications_none_sharp,
                  color: selectedIndex == 1 ? primary : text3,
                )),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: primary,
                  ),
                  child: Icon(
                    Icons.add_box_outlined,
                    color: text2,
                  )),
              label: ''),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () => {Navigator.pushNamed(context, '/cart')},
                child: Container(
                    child: Icon(
                  Icons.shopping_bag_outlined,
                  color: selectedIndex == 3 ? primary : text3,
                )),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Container(
                  child: Icon(
                Icons.person_outline_outlined,
                color: selectedIndex == 4 ? primary : text3,
              )),
              label: ''),
        ]);
  }

  // Widget customNav() {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNav(),
      body: selectedIndex == 0 ? home() : myProfile(),
    );
  }
}
