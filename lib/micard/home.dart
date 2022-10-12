import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MiCardHome extends StatelessWidget {
  const MiCardHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.amber,
            radius: 50.0,
            backgroundImage: AssetImage("images/joney-spark-!-bg.png"),
          ),
          Text(
            "Joney Spark",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico',
              fontSize: 30.0,
              color: Colors.white,
            ),
          ),
          Text(
            "Flutter Developer",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Source Sans Pro',
              fontSize: 20.0,
              color: Colors.teal.shade100,
              letterSpacing: 2.5,
            ),
          ),
          SizedBox(
            height: 20.0,
            child: Divider(color: Colors.teal.shade100),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.teal.shade900,
              ),
              title: Text(
                "07888673770",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro'),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.teal.shade900,
              ),
              title: Text(
                "sparkjoney@gmail.com",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro'),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
