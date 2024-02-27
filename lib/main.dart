import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:motor_doc/login_page.dart';
import 'package:motor_doc/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      title: 'Motor Doc',
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

