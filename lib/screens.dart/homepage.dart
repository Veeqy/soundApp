import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sound_app/screens.dart/soundpage.dart';
 
class Homepage extends StatefulWidget{
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
@override
void initState(){
  super.initState();
    Timer(const Duration(seconds: 3),() {
      Navigator.pushReplacement(
        context,
         MaterialPageRoute(builder: (context) => const SoundPage()),
        );
      });
    }

 @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      
      child: Scaffold(
        backgroundColor: Colors.black, 
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset('assets/Oraimo.png',
          fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}



