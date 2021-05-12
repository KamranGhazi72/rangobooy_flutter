import 'package:flutter/material.dart';
import 'package:rangobooy/constants.dart';
import 'package:rangobooy/enums.dart';
import 'package:rangobooy/screens/category/category_screen.dart';
import 'package:rangobooy/screens/home/home_screen.dart';
// import 'package:shop_app/screens/profile/profile_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            spreadRadius: 50,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.storefront,
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
                icon: Icon(Icons.favorite_outline),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.message_outlined),
                onPressed: () {
                  Navigator.pushNamed(context, CategoryScreen.routeName);
                },
              ),
              IconButton(
                  icon: Icon(
                    Icons.person_outline,
                    color: MenuState.profile == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor,
                  ),
                  onPressed: () => {}
                  // Navigator.pushNamed(context, ProfileScreen.routeName),
                  ),
            ],
          )),
    );
  }
}
