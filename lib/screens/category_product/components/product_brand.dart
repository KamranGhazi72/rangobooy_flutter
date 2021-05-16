import 'package:flutter/material.dart';

class ProductBrand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 17),
      decoration: BoxDecoration(
          border: Border(top: BorderSide(width: 1, color: Colors.red))),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(top: 5, right: 4, left: 4),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            decoration: BoxDecoration(
                color: Color(0xFFF4F4F4),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/images/visa.png'),
                  height: 70,
                  width: 70,
                ),
                Text('سامسونگ')
              ],
            ),
          );
        },
      ),
    );
  }
}
