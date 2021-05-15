import 'package:flutter/material.dart';
import 'package:rangobooy/screens/category/components/body.dart';
import 'package:rangobooy/screens/category/components/search_field.dart';

class CategoryScreen extends StatelessWidget {
  static String routeName = "/category";
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
