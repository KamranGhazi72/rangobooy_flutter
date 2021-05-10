import 'package:flutter/material.dart';
import 'package:rangobooy/components/coustom_bottom_nav_bar.dart';
import 'package:rangobooy/enums.dart';
import 'package:rangobooy/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
