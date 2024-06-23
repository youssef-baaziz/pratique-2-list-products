import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dwm1/pages/product.item.page.dart';
import 'package:http/http.dart' as http;

class MyProductPage extends StatefulWidget {
  const MyProductPage({super.key});

  @override
  State<MyProductPage> createState() => _MyProductPageState();
}

class _MyProductPageState extends State<MyProductPage> {
  List<dynamic> products = [];
  @override
  void initState() {
    super.initState();
    http.get(Uri.parse("http://192.168.1.2:9002/products")).then((response) {
      setState(() {
        products = json.decode(response.body);
      });
    }).catchError((err) {
      print("********* ERROR RRs**********");
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Products",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ProductItem(
            product: products[index],
            detail: false,
          );
        },
        itemCount: products.length,
      ),
    );
  }
}
