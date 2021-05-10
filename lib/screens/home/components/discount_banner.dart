import 'package:flutter/material.dart';
import 'package:rangobooy/size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenHeight(10)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(35),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/imagesDescount.jpg'),
            fit: BoxFit.cover),
        // color: Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
              text: "یک تابستان رویایی\n",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
              ),
            ),
            TextSpan(
              text: "تخفیف طلایی تا 70%",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(24),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
