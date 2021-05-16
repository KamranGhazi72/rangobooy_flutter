import 'package:flutter/material.dart';
import 'package:rangobooy/screens/category_product/components/product_brand.dart';
import 'package:rangobooy/screens/category_product/components/product_column.dart';
import 'package:rangobooy/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text('محبوب ترین برند',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.red[900])),
          ProductBrand(),
          SizedBox(height: getProportionateScreenHeight(40)),
          Text('فروش ویژه',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.red[900])),
          ProductColumn(),
        ],
      ),
    );
  }
}
