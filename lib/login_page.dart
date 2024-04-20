// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
                    Container(
                      height: 50,
                      width: 320,
                      padding: const EdgeInsets.only(left: 20),
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.black,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 4,
                              offset: const Offset(4, 4),
                            ),
                          ]),
                      child: TextField(
                        onChanged: (value) {
                          email = value;
                        },
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 320,
                      padding: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 4,
                            offset: const Offset(4, 4),
                          ),
                        ],
                      ),
                      child: TextField(
                        onChanged: (value) {
                          password = value;
                        },
                        obscureText: showPassword,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          suffixIcon: InkWell(
                            child: Icon(showPassword
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onTap: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    // TextBox(
                    //     hintText: 'username',
                    //     onChanged: (value) {
                    //       email = value;
                    //     }),
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
                                blurRadius:2,          
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

// class TextBox extends StatefulWidget {
//   final String hintText;
//   final Function onChanged;
//   final bool ifpassword = false;
//   bool showPassword = false;
//   TextBox({
//     super.key,
//     required this.hintText,
//     required this.onChanged,
//   });

//   @override
//   State<TextBox> createState() => _TextBoxState();
// }

// class _TextBoxState extends State<TextBox> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       width: 320,
//       padding: const EdgeInsets.only(left: 20),
//       margin: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15),
//           border: Border.all(
//             color: Colors.black,
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               blurRadius: 4,
//               offset: const Offset(4, 4),
//             ),
//           ]),
//       child: TextField(
//         onChanged: widget.onChanged(),
//         style: const TextStyle(
//           color: Colors.black,
//         ),
//         decoration: InputDecoration(
//           border: InputBorder.none,
//           hintText: widget.hintText,
//           suffixIcon: widget.ifpassword
//               ? InkWell(
//                   child: Icon(widget.showPassword
//                       ? Icons.visibility
//                       : Icons.visibility_off),
//                   onTap: () {
//                     setState(() {
//                       widget.showPassword = !widget.showPassword;
//                     });
//                   },
//                 )
//               : null,
//         ),
//       ),
//     );
//   }
// }
