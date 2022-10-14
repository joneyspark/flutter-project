import 'package:flutter/material.dart';
import 'package:helloworld/quizzler/quizzler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Fluuter app',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: QuizPage(),
    );
  }
}
