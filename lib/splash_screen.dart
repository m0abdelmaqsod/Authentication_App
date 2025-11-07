import 'package:flutter/material.dart';
import 'package:project/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 1),
      () => Navigator.push(context, MaterialPageRoute(builder: (c) => logIn())),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 600,
                child: Image.asset(
                  "assets/images/Group 33677.png",
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                top: 120,
                left: 110,
                child: SizedBox(
                  width: 190,
                  child: Image.asset(
                    "assets/images/LOGO.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 40),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "LOREM IPSUM",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Text(
                  "Lorem Ipsum is a dummy text used as placeholder",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
