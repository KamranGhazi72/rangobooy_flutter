import 'package:flutter/material.dart';

class CatProductListView extends StatelessWidget {
  final String subCatName;
  final String subCatImg;

  const CatProductListView(
      {Key key, @required this.subCatName, @required this.subCatImg})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(subCatImg),
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
        Text(subCatName)
      ],
    );
  }
}
