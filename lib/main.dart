import 'package:flutter/material.dart';
import 'package:helloworld/clima/screens/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        // textTheme: const TextTheme(
        //   bodyText2: TextStyle(
        //     color: Colors.white,
        //   ),
        // ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.purple,
          primary: Color(0xFF0A0E21),
        ),
      ),
      // themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const LoadingScreen(),
    );
  }
}
