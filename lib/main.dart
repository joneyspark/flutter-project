import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/coin-ticker/price_screen.dart';
import 'package:helloworld/flash-chat/screens/chat_screen.dart';
import 'package:helloworld/flash-chat/screens/login_screen.dart';
import 'package:helloworld/flash-chat/screens/register_screen.dart';
import 'package:helloworld/flash-chat/screens/welcome.dart';
import 'package:helloworld/provider-example/provider_test.dart';
import 'package:helloworld/todo/models/task_data.dart';
import 'package:helloworld/todo/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

// void main() => runApp(MyApp());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (_) => TaskData(),
      child: MaterialApp(
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
        // initialRoute: WelcomeScreen.id,
        home: TasksScreen(),
        // routes: {
        //   WelcomeScreen.id: (context) => const WelcomeScreen(),
        //   LoginScreen.id: (context) => const LoginScreen(),
        //   RegisterScreen.id: (context) => const RegisterScreen(),
        //   ChatScreen.id: (context) => const ChatScreen(),
        // },
      ),
    );
  }
}
