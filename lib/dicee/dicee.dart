import 'dart:math';

import 'package:flutter/material.dart';

class DiceeView extends StatefulWidget {
  const DiceeView({super.key});

  @override
  State<DiceeView> createState() => _DiceeViewState();
}

class _DiceeViewState extends State<DiceeView> {
  int leftDiceeNumber = 1;
  int rightDiceeNumber = 1;
  void randomDiceeNumber() {
    setState(() {
      leftDiceeNumber = Random().nextInt(6) + 1;
      rightDiceeNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("Dicee"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FittedBox(
                  child: FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    onPressed: () {
                      randomDiceeNumber();
                    },
                    child: Image.asset(
                      "images/dice${leftDiceeNumber}.png",
                      width: 100.0,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FittedBox(
                  child: FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    onPressed: () {
                      randomDiceeNumber();
                    },
                    child: Image.asset(
                      "images/dice${rightDiceeNumber}.png",
                      width: 100.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
