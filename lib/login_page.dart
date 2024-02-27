import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
      bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          InkWell(
            onDoubleTap: () {
              setState(() {
                darkMode = !darkMode;
              });
            },
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: darkMode ? const Color(0xFF212121) : Colors.white,
            ),
          ),
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                ),
                Image.asset('assets/login/logo.png'),
                Text("LOGIN",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: darkMode ? Colors.white : Colors.black,
                    )),
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
                       boxShadow: darkMode? []: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 4,
                          offset: const Offset(4, 4),
                        ),
                      ]),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Username',
                    ),
                  ),
                ),
                // const SizedBox(height: 20,),
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
                    boxShadow: darkMode? []: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 4,
                        offset: const Offset(4, 4),
                      ),
                    ],
                  ),
                  child: const TextField(
                    obscureText: true,
                    
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15, right: 50),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "forgot password?",
                    style: TextStyle(
                        color: darkMode ? Colors.white : Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 50,
                  width: 320,
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.only(
                    left: 125,
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xFFEC7F1B),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
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
                          style: TextStyle(
                            color: darkMode ? Colors.white : Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Color(0xFFEC7F1B),
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}


