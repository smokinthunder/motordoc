import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../Widgets/login_text_box.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
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
                          "LOGIN",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
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
                    Container(
                      margin: const EdgeInsets.only(top: 15, right: 50),
                      alignment: Alignment.centerRight,
                      child: Text(
                        "forgot password?",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        User? user =
                            await signInWithEmailAndPassword(email, password);
                        if (user != null) {
                          // User signed in successfully
                          print("User signed in: ${user.uid}");
                          () {
                            Navigator.pushNamed(context, '/home');
                          };
                        } else {
                          // Sign-in failed
                          print("Sign-in failed");
                        }
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
                          "Login",
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
                              "Don't have an account?",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/signup');
                              },
                              child: const Text(
                                "Sign Up",
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
}

// Function to sign in with email and password
Future<User?> signInWithEmailAndPassword(String email, String password) async {
  try {
    // Sign in with email and password
    final UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    // Return the signed-in user
    return userCredential.user;
  } catch (error) {
    print(error);
    return null;
  }
}
