import 'package:flutter/material.dart';
import 'package:sound_app/screens.dart/soundpage.dart';

class Profile_page extends StatelessWidget {
  const Profile_page({super.key});

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
        child:  Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
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
                        builder: (context) => const SoundPage(),
                      ),
                    );
                  },
                  icon: const Center(
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 77, 75, 75),
                      radius: 14,
                      foregroundColor: Color.fromARGB(255, 248, 246, 246),
                      child:Icon(Icons.navigate_before_rounded),
                    ),
                  ),
                ),
                const SizedBox(
                width:80 ,
                ),
                const Text('Account profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
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
