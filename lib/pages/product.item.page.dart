import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final dynamic product;
  final bool detail;
  ProductItem({super.key, required this.product, required this.detail});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,
                    height: 180,
                    child: Card(
                      color: const Color.fromARGB(255, 170, 173, 174),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${product['name']}"),
                            Text("${product['price']} MAD"),
                            if (product['promotion'] == true)
                              const Icon(
                                Icons.fmd_good,
                                color: Colors.green,
                              ),
                            Row(
                              children: [
                                for (int i = 0; i < product['stars']; i++)
                                  Icon(Icons.star, color: Colors.yellow),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // first way :
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => ProductDetail(
                      //         productId: int.parse(product['id']),
                      //       ),
                      //     ));

                      // second way :
                      if (detail == false)
                        Navigator.pushNamed(
                          context,
                          '/productDetails',
                          arguments: int.parse(product['id']),
                        );
                    },
                    child: Image(
                      width: 200,
                      image: AssetImage(
                        "${product['image']}",
                      ),
                    ),
                  )
                ],
              ),
            ),
            if (detail == true)
              Card(
                child: Text("${product['description']}"),
              )
          ],
        ),
      ),
    );
  }
}
