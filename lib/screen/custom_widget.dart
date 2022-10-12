import 'package:flutter/material.dart';
import 'package:helloworld/screen/widget/list_view.dart';

class MyCustomWidget extends StatelessWidget {
  const MyCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Widget"),
      ),
      body: ListView(
        children: [
          ListTitleWidget(
            title: "Joney Spark",
            subtitle: "Hello Dolly!",
          ),
          ListTitleWidget(
            title: "Boney Spark",
            subtitle: "Hello World",
            leadingIcon: Icons.laptop,
            trailingIcon: Icons.shopping_bag,
            iconColor: Colors.red,
            listTileColor: Colors.amber,
          )
        ],
      ),
    );
  }
}
