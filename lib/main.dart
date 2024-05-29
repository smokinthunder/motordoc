import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:motor_doc/Firebase/firebase_options.dart';
import 'package:motor_doc/themes/themes.dart';

import 'Authentication/login_page.dart';
import 'Authentication/signup_page.dart';
import 'Screens/home_page.dart';

/// The main entry point of the Motor Doc application.
///
/// This class initializes the Flutter app and Firebase, and sets up the
/// MaterialApp with the appropriate themes and routes.
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure that the Flutter app initializes properly
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); // Initialize Firebase
  runApp(const MyApp());
}

/// The root widget of the Motor Doc application.
///
/// This widget sets up the MaterialApp with the appropriate themes and routes.
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
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/signup': (context) =>  const SignupPage(),
      },
    );
  }
}
