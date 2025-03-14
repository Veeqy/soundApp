import 'package:flutter/material.dart';
import 'package:sound_app/screens.dart/forgot_password.dart';
import 'package:sound_app/screens.dart/profile_page.dart';
import 'package:sound_app/screens.dart/register.dart';

class Login_page extends StatelessWidget {
  const Login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(221, 10, 14, 13),
              Colors.black,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  IconButton(
                    style: IconButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profile_page(),
                        ),
                      );
                    },
                    icon: const Center(
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 77, 75, 75),
                        radius: 14,
                        foregroundColor: Color.fromARGB(255, 248, 246, 246),
                        child: Icon(Icons.navigate_before_rounded),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              const Text(
                'Email address',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 173, 171, 171),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const TextField(
                cursorColor: Color(0xFF82E600),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Email address',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 138, 135, 135),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 51, 50, 59),
                ),
                style: TextStyle(
                  color: Color.fromARGB(255, 138, 135, 135),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 173, 171, 171),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const TextField(
                cursorColor: Color(0xFF82E600),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 138, 135, 135),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 51, 50, 59),
                ),
                style: TextStyle(
                  color: Color.fromARGB(255, 138, 135, 135),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const ForgotPassword()),
                      ),
                    );
                  },
                  child: const Text(
                    'Forgot your password?',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 173, 171, 171),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              SizedBox(
                height: 56,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login_page(),
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      width: 1.5,
                      color: Color(0xFF82E600),
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: const Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF82E600),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                  width: 6,
                  ),
                  Align(
                 child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) =>   const Register()),
                      )
                    );
                  },
                    child: const Text(
                      'Register now!',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF82E600),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFF82E600),
                      ),
                    ),
                 ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
