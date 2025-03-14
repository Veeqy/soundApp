import 'package:flutter/material.dart';
import 'package:sound_app/screens.dart/login_page.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                        child: Icon(Icons.navigate_before_rounded),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const MyTextWidget(
                labelText: 'Email address',
                hintText: 'Email address',
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: MyTextWidget(
                      labelText: 'Verificattion code',
                      hintText: 'Enter verification code',
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    height: 56,
                    // width: 70,
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
                          color: Color(0xFF82E600),
                          style: BorderStyle.solid,
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                        ),
                      ),
                      child: const Text(
                        'send',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF82E600),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({
    super.key,
    this.hintText,
    this.labelText,
  });
  final String? hintText;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText ?? '',
          style: const TextStyle(
            color: Color.fromARGB(255, 138, 135, 135),
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          cursorColor: const Color(0xFF82E600),
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              borderSide: BorderSide.none,
            ),
            hintText: hintText ?? 'Email address',
            hintStyle: const TextStyle(
              color: Color.fromARGB(255, 138, 135, 135),
            ),
            filled: true,
            fillColor: const Color.fromARGB(255, 51, 50, 59),
          ),
          style: const TextStyle(
            color: Color.fromARGB(255, 138, 135, 135),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
