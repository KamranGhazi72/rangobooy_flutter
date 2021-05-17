import 'package:flutter/material.dart';
import 'package:rangobooy/screens/profile/components/customer_avatar.dart';
import 'package:rangobooy/screens/profile/components/profile_items.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [CustomerAvatar(), ProfileItems()],
      ),
    );
  }
}
