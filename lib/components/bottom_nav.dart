import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// ignore: must_be_immutable
class bottom_nav extends StatelessWidget {
  void Function(int)? onTabChange;
  bottom_nav({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        color: Colors.grey,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBackgroundColor: Colors.grey.shade100,
        tabBorderRadius: 25,
        gap: 8,
        onTabChange: (value) =>  onTabChange!(value),
        tabs: [
        GButton(
          icon: Icons.home,
          text: "S H O P",),
          GButton(icon: Icons.shopping_bag_rounded,
          text: "C A R T",),
      ]),
    );
  }
} 