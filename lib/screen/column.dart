import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row & Column"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child: Image(
                    image: AssetImage("images/joney-spark-!-bg.png"),
                    width: 150.0,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Image(
                    image: AssetImage("images/joney-spark-!-bg.png"),
                    width: 150.0,
                  ),
                ),
                Expanded(
                  child: Image(
                    image: AssetImage("images/joney-spark-!-bg.png"),
                    width: 150.0,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star_border),
                Icon(Icons.star_border),
                Icon(Icons.star_border),
                Icon(Icons.star_border),
                Icon(Icons.star_border),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Icon(
                      Icons.phone,
                      size: 35.0,
                    ),
                    Text("Phone"),
                  ],
                ),
                Column(
                  children: const [
                    Icon(
                      Icons.alt_route,
                      size: 35.0,
                    ),
                    Text("Route"),
                  ],
                ),
                Column(
                  children: const [
                    Icon(
                      Icons.share,
                      size: 35.0,
                    ),
                    Text("Share"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
