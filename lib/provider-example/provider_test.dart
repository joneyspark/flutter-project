import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:helloworld/flash-chat/constants.dart';
import 'package:provider/provider.dart';

class Level1 extends StatelessWidget {
  const Level1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Testing'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: MyTextField(),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Level3(),
            )
          ],
        ),
      ),
    );
  }
}

class Level2 extends StatelessWidget {
  const Level2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level3(),
    );
  }
}

class Level3 extends StatelessWidget {
  const Level3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        Provider.of<Data>(context).data.toString(),
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Data>(context);
    return Container(
      child: TextField(
        onChanged: (newText) {
          provider.changeString(newText);
        },
        decoration: kTextFieldDecoration.copyWith(
          hintText: 'Enter Your Text',
        ),
      ),
    );
  }
}

class Data extends ChangeNotifier {
  String data = '1223434859';

  void changeString(String newString) {
    data = newString;
    notifyListeners();
  }
}
