import 'package:flutter/material.dart';
import 'package:rangobooy/screens/home/components/best_products.dart';
import 'package:rangobooy/screens/home/components/carousel_slider.dart';
import 'package:rangobooy/screens/home/components/categories.dart';
import 'package:rangobooy/screens/home/components/discount_banner.dart';
import 'package:rangobooy/screens/home/components/home_header.dart';
import 'package:rangobooy/screens/home/components/special_offers.dart';
import 'package:rangobooy/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(20)),
          HomeHeader(),
          SizedBox(height: getProportionateScreenHeight(20)),
          CarouselSliderMain(),
          // DiscountBanner(),
          SizedBox(height: getProportionateScreenHeight(20)),
          Categories(),
          SizedBox(height: getProportionateScreenHeight(20)),
          SpecialOffers(),
          SizedBox(height: getProportionateScreenWidth(20)),
          BestProducts(),
          SizedBox(height: getProportionateScreenWidth(30)),
        ],
      )),
    );
  }
}
