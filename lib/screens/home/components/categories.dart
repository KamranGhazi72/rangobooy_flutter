import 'package:flutter/material.dart';
import 'package:rangobooy/models/main_category_model.dart';
import 'package:rangobooy/size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 36,
        margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenHeight(0)),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(60),
              focusColor: Color(0xFFF87C51),
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(5)),
                decoration: BoxDecoration(
                  color: Color(0xFFF7E5D8),
                  borderRadius: BorderRadius.circular(60),
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(25),
                    vertical: getProportionateScreenHeight(5)),
                child: Text(
                  categories[index].title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF87C51),
                      fontSize: 15),
                ),
              ),
            );
          },
        ));
  }
}
