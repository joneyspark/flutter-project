import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details({super.key, required this.productName});

  String productName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(productName),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              ListTile(
                leading: const Icon(Icons.account_balance_outlined),
                title: Text(productName),
              )
            ],
          ),
        ));
  }
}
