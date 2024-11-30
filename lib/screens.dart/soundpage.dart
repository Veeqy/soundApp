import 'package:flutter/material.dart';

class SoundPage extends StatelessWidget {
  const SoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  style: IconButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                  ),
                  onPressed: () {},
                  icon: const Center(
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 77, 75, 75),
                      radius: 12,
                      foregroundColor: Color.fromARGB(255, 172, 169, 169),
                      child: Icon(Icons.person_2_outlined),
                    ),
                  ),
                ),
                const Text(
                  'oraimo sound',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Center(
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 44, 43, 43),
                      radius: 12,
                      foregroundColor: Color.fromARGB(255, 177, 173, 173),
                      child: Icon(Icons.settings_outlined),
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              'My Device(s)',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            SizedBox(
              height: 120,
              width: 120,
              child: Center(
                child: Image.asset(
                  'assets/RealSound.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Add Device',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Colors.white38,
              ),
              textAlign: TextAlign.center,
            ),
             const SizedBox(
              height: 26,
            ),
            SizedBox(
              height: 53,
              child: OutlinedButton(
                onPressed: (
                  
                ) {
                  debugPrint('Received click');
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    width: 1.5 ,
                    color: Color(0xFF82E600),
                    style: BorderStyle.solid,
                  ),
                ),
                child: const Text(
                  '+ Add Device',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF82E600),                    
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
