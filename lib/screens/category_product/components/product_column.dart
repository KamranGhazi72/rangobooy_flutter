import 'package:flutter/material.dart';

class ProductColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
          return Container(
            height: 150,
            color: Colors.amber,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/images/macbook.png'),
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('لبتاب macbook pro مدل a250 با حافظه 256 GB',
                        maxLines: 3,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        )),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.note_rounded),
                            const SizedBox(width: 5),
                            Text(
                              'موجود در انبار',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '4.3',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Icon(Icons.star),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
