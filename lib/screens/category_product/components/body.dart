import 'package:flutter/material.dart';
import 'package:rangobooy/screens/category_product/components/product_column.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ProductColumn(),
        ],
      ),
    );
  }
}
