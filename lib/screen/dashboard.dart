import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          title: const Text('Menu'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(Icons.car_crash_outlined),
            // ),
          ],
          elevation: 10.0,
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20.0),
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 229, 229, 229),
        body: Container(
          width: 250.0,
          height: 250.0,
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(50.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            // borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.greenAccent,
              width: 6.0,
            ),
            shape: BoxShape.circle,
            image: const DecorationImage(
              image: AssetImage("images/joney-spark-!-bg.png"),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 78, 78, 78),
                blurRadius: 7,
                spreadRadius: 5,
                offset: Offset(4, 4),
              ),
            ],
          ),
          child: const Text(
            "Joney Spark",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}

int getNumber() {
  return Random().nextInt(100);
}
