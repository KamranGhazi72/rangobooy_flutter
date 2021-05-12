import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rangobooy/models/slider.dart';
import 'package:rangobooy/size_config.dart';

class CarouselSliderMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 170.0,
          // aspectRatio: 16 / 9,
          viewportFraction: 0.9,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.easeInOutBack,
          // enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        items: sliderMain.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                // height: 90,
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(10),
                    vertical: getProportionateScreenHeight(10)),
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                  vertical: getProportionateScreenWidth(35),
                ),
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //     image: AssetImage(i.img), fit: BoxFit.cover),
                  color: Color(int.parse(i.img)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(color: Color(int.parse(i.color))),
                    children: [
                      TextSpan(
                        text: i.title + "\n",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(16),
                        ),
                      ),
                      TextSpan(
                        text: i.detail,
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(24),
                            fontFamily: "LalezarRegular"),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
