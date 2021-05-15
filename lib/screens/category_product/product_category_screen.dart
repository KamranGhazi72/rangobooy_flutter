import 'package:flutter/material.dart';
import 'package:rangobooy/screens/category_product/components/body.dart';
import 'package:rangobooy/screens/category_product/components/search_field.dart';

class ProductCategoryScreen extends StatelessWidget {
  static String routeName = "/productCategory";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: SearchField(),
      ),
      body: Body(),
    );
  }
}
