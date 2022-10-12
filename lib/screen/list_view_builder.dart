import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyListViewBuilder extends StatelessWidget {
  MyListViewBuilder({super.key});

  List<String> products = [
    "Bed",
    "Sofa",
    "Chair",
  ];
  List<String> productDetails = [
    "King size bed",
    "King size sofa",
    "Woodeen size chair",
  ];
  List<String> price = [
    "300",
    "200",
    "100",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Joney Spark"),
              accountEmail: Text("sparkjoney@gmail.com"),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage("images/joney-spark-!-bg.png"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  foregroundImage: AssetImage("images/joney-spark-!-bg.png"),
                ),
                CircleAvatar(
                  foregroundImage: AssetImage("images/joney-spark-!-bg.png"),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Sales"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("Shopping"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorite"),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Labels"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Sales"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("Shopping"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorite"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(
                products[index][0].toString(),
              ),
            ),
            title: Text(products[index]),
            subtitle: Text(productDetails[index]),
            trailing: Text(price[index]),
          );
        },
      ),
    );
  }
}
