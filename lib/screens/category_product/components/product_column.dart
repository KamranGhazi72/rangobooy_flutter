import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rangobooy/models/Product.dart';
import 'package:rangobooy/screens/details/details_screen.dart';

class ProductColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: demoProducts.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.pushNamed(
              context,
              DetailsScreen.routeName,
              arguments: ProductDetailsArguments(product: demoProducts[index]),
            ),
            child: Container(
              height: 130,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
              padding: EdgeInsets.only(left: 10, top: 5, right: 0, bottom: 5),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 0.5, color: Colors.grey),
                      top: BorderSide(width: 1, color: Colors.red))),
              child: Row(
                // mainAxisAlignment:zrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage(demoProducts[index].images[0]),
                      height: 100,
                      width: 100,
                      // fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(demoProducts[index].title,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.notes_outlined,
                                  color: Colors.blueAccent,
                                  size: 20,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  'موجود در انبار',
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blueAccent),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '${demoProducts[index].rating}',
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                const SizedBox(width: 1),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFFD700),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red,
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.local_offer_outlined,
                                      size: 15, color: Colors.white),
                                  const SizedBox(width: 5),
                                  Text(
                                    '20%',
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '${demoProducts[index].price}',
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  'تومن',
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
