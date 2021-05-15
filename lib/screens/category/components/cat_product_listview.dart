import 'package:flutter/material.dart';
import 'package:rangobooy/screens/category_product/product_category_screen.dart';

class CatProductListView extends StatelessWidget {
  final String subCatName;
  final String subCatImg;

  const CatProductListView(
      {Key key, @required this.subCatName, @required this.subCatImg})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductCategoryScreen()));
      },
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Color(0xFFFAFAFA), borderRadius: BorderRadius.circular(6)),
        child: Column(
          children: [
            Image(
              image: AssetImage(subCatImg),
              width: 100,
              height: 100,
            ),
            SizedBox(height: 5),
            Text(
              subCatName,
              style: TextStyle(color: Colors.black, fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}
