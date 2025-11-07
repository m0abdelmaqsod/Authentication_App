import 'package:flutter/material.dart';
import 'package:project/splash_screen.dart';

void main() {
  runApp(AuthenticationApp());
}

class AuthenticationApp extends StatelessWidget {
  const AuthenticationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: 
        SplashScreen(), 
        // logIn(),
      ),
    );
  }
}
