import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ElevatedButton.icon(
            onPressed: () {
              print("Clicked");
            },
            // child: Text("Let's Begin"),
            icon: const Icon(Icons.shop_2_outlined),
            label: const Text("Lets Start"),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20.0),
              fixedSize: const Size(300, 70),
              textStyle:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              backgroundColor: Colors.yellow,
              foregroundColor: Colors.black,
              elevation: 15,
              shadowColor: Colors.amberAccent,
              side: const BorderSide(
                color: Colors.black45,
                width: 2,
              ),
              alignment: Alignment.center,
              shape: StadiumBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
