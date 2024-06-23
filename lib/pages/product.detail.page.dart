import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dwm1/pages/product.item.page.dart';
import 'package:http/http.dart' as http;

class ProductDetail extends StatefulWidget {
  final int productId;
  ProductDetail({Key? key, required this.productId}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  dynamic product = null;

  @override
  void initState() {
    super.initState();
    http
        .get(Uri.parse("http://192.168.1.2:9002/products/${widget.productId}"))
        .then((response) {
      setState(() {
        product = json.decode(response.body);
        print(product);
      });
    }).catchError((err) {
      print("********* ERROR PRODUCT DETAIL **********");
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product details",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: (product != null)
          ? Center(
              child: ProductItem(
                product: product,
                detail: true,
              ),
            )
          : Container(),
    );
  }
}
