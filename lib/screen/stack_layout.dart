import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyStackLayout extends StatelessWidget {
  const MyStackLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 300,
              height: 200,
              color: Colors.amber,
            ),
            Positioned(
              right: 0,
              child: Container(
                width: 200,
                height: 150,
                color: Colors.black,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: 100,
                height: 80,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
