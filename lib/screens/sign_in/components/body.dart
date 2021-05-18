import 'package:flutter/material.dart';
import 'package:rangobooy/components/no_account_text.dart';
import 'package:rangobooy/components/socal_card.dart';
import 'package:rangobooy/screens/sign_in/components/sign_form.dart';
import 'package:rangobooy/size_config.dart';

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
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "خوش آمدید",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "می توانید با وارد کردن ایمیل و رمزعبور \nیا با استفاده از شبکه های اجتماعی وارد شوید",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
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
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
