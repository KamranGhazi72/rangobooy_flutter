import 'package:flutter/material.dart';

class CustomerAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 100, vertical: 5),
      // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 210,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/marion-cotillard.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(200)),
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: Color(0xFFF2F3F7),
                  borderRadius: BorderRadius.circular(100)),
              child: IconButton(
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.grey[500],
                  size: 27,
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
