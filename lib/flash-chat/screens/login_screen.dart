import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:helloworld/components/rounded_button.dart';
import 'package:helloworld/flash-chat/screens/chat_screen.dart';
import 'package:helloworld/flash-chat/screens/loading.dart';
import '../constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            appBar: AppBar(
              title: const Text('Login'),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Hero(
                        tag: 'logo',
                        child: Container(
                          child: Image.asset('images/flash_chat_logo.png'),
                          height: 200.0,
                        ),
                      ),
                      SizedBox(
                        height: 48.0,
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          email = value;
                        },
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Enter Your Email',
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        obscureText: true,
                        onChanged: (value) {
                          password = value;
                        },
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Enter Your Password',
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      RoundedButton(
                        colour: Colors.lightBlueAccent,
                        title: 'Login',
                        onPressed: () async {
                          setState(() {
                            loading = true;
                          });
                          try {
                            final userCredential = await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                    email: email, password: password);
                            final user = FirebaseAuth.instance.currentUser;

                            if (user != null) {
                              Navigator.pushNamed(context, ChatScreen.id);
                            }
                            setState(() {
                              loading = false;
                            });
                          } catch (e) {
                            setState(() {
                              loading = false;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
