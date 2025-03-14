import 'package:flutter/material.dart';
import 'package:sound_app/screens.dart/login_page.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                          builder: (context) => const Login_page(),
                        ),
                      );
                    },
                    icon: const Center(
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 77, 75, 75),
                        radius: 14,
                        foregroundColor: Color.fromARGB(255, 248, 246, 246),
                        child: Icon(Icons.close),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Forgot your password',
                style: TextStyle(
                  fontSize: 38,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Access your account',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 173, 171, 171),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 56,
                child:  TextField(
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
                      fontSize: 18,
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 51, 50, 59),
                  ),
                  style: TextStyle(
                    color: Color.fromARGB(255, 138, 135, 135),
                  ),
                ),
              ),
              const SizedBox(
                height: 68,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 56,
                ),
                child: SizedBox(
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
                      'Next',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF82E600),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
