import 'package:flutter/material.dart';
import 'package:rangobooy/screens/category/components/categories_listview.dart';
import 'package:rangobooy/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          // SizedBox(height: getProportionateScreenHeight(20)),
          CategoriesListView(),
          SizedBox(height: getProportionateScreenHeight(60)),
        ],
      )),
    );
  }
}
