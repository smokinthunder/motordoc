import 'package:flutter/material.dart';
import 'package:motor_doc/login_page.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Motor Doc',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}