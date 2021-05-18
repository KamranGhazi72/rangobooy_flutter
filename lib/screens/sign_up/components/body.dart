import 'package:flutter/material.dart';
import 'package:rangobooy/components/socal_card.dart';
import 'package:rangobooy/constants.dart';
import 'package:rangobooy/size_config.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                Text("ثبت نام", style: headingStyle),
                Text(
                  "برای ورود به رنگ و بوی، اطلاعات خواسته شده را وارد کنید \nیا از طریق شبکه های اجتماعی اقدام نمایید ",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/images/Google-icon.png",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/images/facebook-icon.png",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/images/twitter-icon.png",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                Text(
                  '',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
