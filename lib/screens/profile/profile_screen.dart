import 'package:flutter/material.dart';
import 'package:rangobooy/components/coustom_bottom_nav_bar.dart';
// import 'package:rangobooy/constants.dart';
import 'package:rangobooy/enums.dart';
import 'package:rangobooy/screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // title: Text(
        //   'مشخصات کاربری',
        //   style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w600),
        // ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings_outlined,
              color: Colors.black87,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
