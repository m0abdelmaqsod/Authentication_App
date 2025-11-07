import 'package:flutter/material.dart';
import 'package:project/login.dart';
import 'package:project/widget/custom_text_field.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              // ========= && ========= //
              SizedBox(height: 80),

              // ========= && ========= //
              Text(
                "Let’s Get Started!",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
              ),

              // ========= && ========= //
              SizedBox(height: 10),

              // ========= && ========= //
              Text(
                "Create an account on MNZL to get all features",
                style: TextStyle(fontSize: 16),
              ),

              // ========= && ========= //
              SizedBox(height: 30),

              // ========= && ========= //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: firstname,
                        hint: "First Name",
                        icon: Icons.person_2_outlined,
                      ),
                      // ========= && ========= //
                      SizedBox(height: 20),

                      // ========= && ========= //
                      CustomTextField(
                        controller: lastname,
                        hint: "Last Name",
                        icon: Icons.person_2_outlined,
                      ),
                      // ========= && ========= //
                      SizedBox(height: 20),

                      // ========= && ========= //
                      CustomTextField(
                        controller: username,
                        hint: "User Name",
                        icon: Icons.person_2_outlined,
                      ),
                      // ========= && ========= //
                      SizedBox(height: 20),

                      // ========= && ========= //
                      CustomTextField(
                        controller: email,
                        hint: "Email",
                        icon: Icons.email_outlined,
                      ),
                      // ========= && ========= //
                      SizedBox(height: 20),

                      // ========= && ========= //
                      CustomTextField(
                        controller: password,
                        hint: "Password",
                        icon: Icons.lock_outline,
                      ),
                      // ========= && ========= //
                      SizedBox(height: 20),

                      // ========= && ========= //
                      CustomTextField(
                        controller: confirmpassword,
                        hint: "Confirm Password",
                        icon: Icons.lock_outline,
                      ),
                    ],
                  ),
                ),
              ),

              // ========= && ========= //
              SizedBox(height: 30),

              // ========= && ========= //
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 170,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      colors: [Color(0xff8EDDFF), Color(0xff769DAD)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 3),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "CREATE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),

              // ========= && ========= //
              SizedBox(height: 30),

              // ========= && ========= //
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(fontSize: 18, color: Colors.grey[850]),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(
                        context,
                      ).push(MaterialPageRoute(builder: (context) => logIn()));
                    },
                    child: Text(
                      "Login here",
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
    );
  }
}
