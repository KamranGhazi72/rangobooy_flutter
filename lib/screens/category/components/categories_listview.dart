import 'package:flutter/material.dart';
import 'package:rangobooy/models/main_category_model.dart';
import 'package:rangobooy/screens/category/components/cat_product_listview.dart';
import 'package:rangobooy/size_config.dart';

class CategoriesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                  vertical: getProportionateScreenHeight(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(categories[index].title,
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 19,
                          fontWeight: FontWeight.bold)),
                  Text('مشاهده بیشتر',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: categories[index].nameSubCat.length,
                itemBuilder: (context, indexSub) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20),
                            vertical: getProportionateScreenHeight(10)),
                        child: CatProductListView(
                            subCatName: categories[index].nameSubCat[indexSub],
                            subCatImg: categories[index].imgSubCat[indexSub]),
                      ),
                    ],
                  );
                },
              ),
            ),
          ]);
        },
      ),
    );
  }
}
