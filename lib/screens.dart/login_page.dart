import 'package:flutter/material.dart';
import 'package:sound_app/screens.dart/profile_page.dart';

class Login_page extends StatelessWidget {
  const Login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
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
            vertical: 16,
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
                height: 16,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    
                  ),
                  labelText: 'Email address',
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 138, 135, 135),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 77, 75, 75),
                ),
              ),
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 173, 171, 171),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 138, 135, 135),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 77, 75, 75),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
