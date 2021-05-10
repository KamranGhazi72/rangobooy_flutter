import 'package:flutter/material.dart';
import 'package:rangobooy/screens/home/components/icon_btn_with_counter.dart';
import 'package:rangobooy/screens/home/components/search_field.dart';
import 'package:rangobooy/size_config.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
              svgSrc: 'assets/images/shopIcon.png', numOfItem: 0, press: () {}),
          IconBtnWithCounter(
              svgSrc: 'assets/images/bellIcon.png', numOfItem: 3, press: () {}),
        ],
      ),
    );
  }
}
