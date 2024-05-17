// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../Widgets/login_text_box.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String email = '';
  String password = '';
  String username = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/login/login_background.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: ListView(
              children: [
                Column(
                  children: [
                    const SizedBox(height: 200),

                    // Image.asset('assets/login/logo.png'),
                    Row(
                      children: [
                        const SizedBox(
                          width: 40,
                        ),
                        Text(
                          "SIGNUP",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    LoginTextBox(
                        hintText: 'Username',
                        whenChanged: (value) {
                          username = value;
                        }),
                    LoginTextBox(
                        hintText: 'Email',
                        whenChanged: (value) {
                          email = value;
                        }),
                    LoginTextBox(
                        hintText: 'Password',
                        whenChanged: (value) {
                          password = value;
                        }),

                    InkWell(
                      onTap: () {
                        _signup().then((user) {
                          if (user != null) {
                            user.updateDisplayName(username);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Sign up successful'),
                              ),
                            );
                            Navigator.pushNamed(context, '/home');
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Sign up failed'),
                              ),
                            );
                          }
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 320,
                        margin: const EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.only(
                          left: 125,
                          top: 10,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xFFA70018),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 2,
                                color: Color(0xFF540000),
                                offset: Offset(0, 4),
                                spreadRadius: 2,
                              )
                            ]),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          right: 50,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Already have an account?",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/login');
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                  color: Color(0xFFEC7F1B),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<User?> _signup() async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
      // Additional logic after successful signup
    } catch (e) {
      // Handle signup errors
      print(e.toString());
      return null;
    }
  }
}
