import 'package:flutter/material.dart';
import 'package:flutter_dwm1/widgets/drawer.header.widget.dart';
import 'package:flutter_dwm1/widgets/drawer.item.widget.dart';

class MyCustomDrawer extends StatelessWidget {
  const MyCustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyDrawerHeader(),
          MyDrawerItem(
            title: "Home",
            itemIcon: Icon(Icons.home),
            route: "/",
          ),
          Divider(
            height: 1,
            color: Theme.of(context).primaryColor,
          ),
          MyDrawerItem(
            title: "Counter",
            itemIcon: Icon(Icons.person),
            route: "/counter",
          ),
          Divider(
            height: 1,
            color: Theme.of(context).primaryColor,
          ),
          MyDrawerItem(
            title: "Product",
            itemIcon: Icon(Icons.production_quantity_limits),
            route: "/products",
          ),
          Divider(
            height: 1,
            color: Theme.of(context).primaryColor,
          ),
          MyDrawerItem(
            title: "Logout",
            itemIcon: Icon(Icons.login),
            route: "/login",
          ),
          Divider(
            height: 1,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
