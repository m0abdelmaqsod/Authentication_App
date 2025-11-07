import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/signup.dart';
import 'package:project/widget/custom_text_field.dart';

class logIn extends StatefulWidget {
  const logIn({super.key});

  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: ListView(
            children: [
              Column(
                children: [
                  // ========= && ========= //
                  SizedBox(height: 150),

                  // ========= && ========= //
                  SizedBox(
                    width: 150,
                    child: Image.asset(
                      "assets/images/LOGO.png",
                      fit: BoxFit.contain,
                    ),
                  ),

                  // ========= && ========= //
                  SizedBox(height: 35),

                  // ========= && ========= //
                  Text(
                    "Welcome back!",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
                  ),

                  // ========= && ========= //
                  SizedBox(height: 10),

                  // ========= && ========= //
                  Text(
                    "Log In to existing LOGO account",
                    style: TextStyle(fontSize: 16),
                  ),

                  // ========= && ========= //
                  SizedBox(height: 35),

                  // ========= && ========= //
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              CustomTextField(
                                controller: username,
                                hint: "User Name",
                                icon: Icons.person_2_outlined,
                              ),

                              SizedBox(height: 20),

                              CustomTextField(
                                controller: password,
                                hint: "password",
                                icon: Icons.lock_outlined,
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 20),

                        GestureDetector(
                          child: Text(
                            "Forgot Password ?",
                            style: TextStyle(fontSize: 16),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  // ========= && ========= //
                  SizedBox(height: 35),

                  // ========= && ========= //
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 180,
                      height: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                          colors: [Color(0xff8EDDFF), Color(0xff769DAD)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "LOG IN",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                  // ========= && ========= //
                  SizedBox(height: 35),

                  // ========= && ========= //
                  Text("Or Sign In Using", style: TextStyle(fontSize: 18)),

                  // ========= && ========= //
                  SizedBox(height: 20),

                  // ========= && ========= //
                  SizedBox(
                    width: 180,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 45,
                          child: GestureDetector(
                            child: Image.asset(
                              "assets/images/Vector.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 45,
                          child: GestureDetector(
                            child: Image.asset(
                              "assets/images/google.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 45,
                          child: GestureDetector(
                            child: Image.asset(
                              "assets/images/apple.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // ========= && ========= //
                  SizedBox(height: 30),

                  // ========= && ========= //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account ? ",
                        style: TextStyle(fontSize: 18, color: Colors.grey[850]),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Signup()),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        // ========= && ========= //
        Positioned(
          top: 0,
          right: 40,
          child: SvgPicture.asset("assets/images/Rectangle 12.svg"),
        ),

        // ========= && ========= //
        Positioned(
          top: 0,
          left: -30,
          child: SvgPicture.asset("assets/images/Rectangle 11.svg"),
        ),
      ],
    );
  }
}
