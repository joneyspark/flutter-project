import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WhishListWidget extends StatefulWidget {
  const WhishListWidget({super.key});

  @override
  State<WhishListWidget> createState() => _WhishListWidgetState();
}

class _WhishListWidgetState extends State<WhishListWidget> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whishlist"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Nike Shoe"),
            trailing: IconButton(
              onPressed: () {
                setState(() => liked = !liked);
              },
              icon: liked
                  ? (Icon(Icons.favorite))
                  : (Icon(Icons.favorite_border)),
            ),
          )
        ],
      ),
    );
  }
}
