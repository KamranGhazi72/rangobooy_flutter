import 'package:flutter/material.dart';
import 'package:rangobooy/models/specialOffer_model.dart';
import 'package:rangobooy/size_config.dart';

class SpecialOffers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenHeight(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('مخصوص برای شما',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 19,
                      fontWeight: FontWeight.bold)),
              Text('مشاهده بیشتر',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: getProportionateScreenWidth(10)),
          height: 120,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: special.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(6)),
                padding:
                    EdgeInsets.only(right: getProportionateScreenWidth(20)),
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(special[index].backImg),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                // child: Text.rich(TextSpan(
                //     style: TextStyle(color: Color(0xFF474554)),
                //     children: [
                //       TextSpan(
                //         text: special[index].title + '\n',
                //         style: TextStyle(
                //           fontSize: getProportionateScreenWidth(24),
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //       TextSpan(
                //         text: special[index].brandCount + 'برند',
                //         style: TextStyle(
                //           height: 2,
                //           letterSpacing: 3,
                //           fontSize: getProportionateScreenWidth(16),
                //         ),
                //       ),
                //     ])),
              );
            },
          ),
        ),
      ],
    );
  }
}
