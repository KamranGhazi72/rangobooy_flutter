import 'package:flutter/material.dart';
import 'package:rangobooy/models/Cart.dart';
import 'package:rangobooy/screens/cart/components/body.dart';
import 'package:rangobooy/screens/cart/components/check_out_card.dart';
import 'package:rangobooy/size_config.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text('سبد خرید',
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87)),
            Text('${demoCarts.length} آیتم',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38)),
          ],
        ),
      ),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }
}
