import 'package:flutter/material.dart';
import 'package:flutter_dwm1/pages/counter.page.dart';
import 'package:flutter_dwm1/pages/home.page.dart';
import 'package:flutter_dwm1/pages/login.page.dart';
import 'package:flutter_dwm1/pages/product.detail.page.dart';
import 'package:flutter_dwm1/pages/product.page.dart';
import 'package:flutter_dwm1/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => MyHomePage(),
        "/counter": (context) => CounterPage(),
        "/products": (context) => MyProductPage(),
        "/login": (context) => LoginPage(),
        "/productDetails": (context) => ProductDetail(
              productId: ModalRoute.of(context)!.settings.arguments as int,
            ),
      },
      home: const MyHomePage(),
      theme: MyAppTheme.themes[0],
    );
  }
}
