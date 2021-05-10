import 'package:flutter/material.dart';
import 'package:rangobooy/constants.dart';
import 'package:rangobooy/size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter(
      {Key key, this.svgSrc, this.numOfItem = 0, this.press})
      : super(key: key);

  final String svgSrc;
  final int numOfItem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Image.asset(svgSrc),
          ),
          if (numOfItem != 0)
            Positioned(
                top: 0,
                right: 0,
                child: Container(
                    // margin: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.all(5),
                    // height: getProportionateScreenWidth(16),
                    // width: getProportionateScreenWidth(16),
                    decoration: BoxDecoration(
                      color: Color(0xFFFF4848),
                      shape: BoxShape.circle,
                      border: Border.all(width: 1.5, color: Colors.white),
                    ),
                    child: Center(
                      child: Text(
                        '$numOfItem',
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(11),
                          height: 1,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    )))
        ],
      ),
    );
  }
}
