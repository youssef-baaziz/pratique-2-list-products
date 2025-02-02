import 'package:flutter/material.dart';
import 'package:flutter_dwm1/widgets/custom.drawer.widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyCustomDrawer(),
      appBar: AppBar(
        title: Text(
          "home",
          style: TextStyle(
              color: Theme.of(context).indicatorColor,
              fontWeight: FontWeight.w900),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text(
          "Home page",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
