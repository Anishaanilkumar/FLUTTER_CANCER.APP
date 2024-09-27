import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_app/auth/glassregister.dart';



class AnimationSplashScreen extends StatefulWidget {
  const AnimationSplashScreen({super.key});

  @override
  _AnimationSplashScreenState createState() => _AnimationSplashScreenState();
}

class _AnimationSplashScreenState extends State<AnimationSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Register()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 3, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Lottie.asset(
              'assets/lottie/Animation.json',
              height: 200,
              width: 200,
            ),
           
            
          ],
        ),
      ),
    );
  }
}
