import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card"),
        ),
        backgroundColor: const Color.fromARGB(255, 27, 27, 27),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            constraints: const BoxConstraints.expand(
              width: 330,
              height: 450,
            ),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white38,
                  offset: Offset(0, 2),
                  spreadRadius: 5,
                  blurRadius: 10,
                ),
              ],
              image: DecorationImage(
                image:
                    AssetImage("images/mobile-new-menu-cafe-coffee-day.jpeg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            //child
            child: Stack(
              children: const [
                Text(
                  "Editor Choice",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),
                Positioned(
                  top: 15.0,
                  child: Text(
                    "The Art of making Coffee",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 20,
                  child: Text(
                    "Learn to make the perfect coffee",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 40,
                  child: Text(
                    "Coding with Joney Spark",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
