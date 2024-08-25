import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_app/Home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centers the content vertically
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, // Centers the animation horizontally
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Lottie.asset('assets/lottie/Animation.json'),
                ),
              ],
            ),
          ),
          SizedBox(height: 20), // Adds space between the animation and the text
          Text(
            'CANCER CAN\'T',
            style: TextStyle(
              fontSize: 24, // Adjust font size as needed
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 12, 12, 12), // Adjust text color as needed
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: const Color.fromARGB(255, 241, 238, 238).withOpacity(0.6),
                  offset: Offset(2.0, 2.0),
                ),
              ],
            ),
          ),
          SizedBox(height: 10), // Adds additional space if needed
        ],
      ),
      nextScreen: const Home(),
      splashIconSize: 250,
      backgroundColor: Color.fromARGB(255, 240, 245, 240),
      duration: 3000, // Optional: Adjust the duration for the splash screen
    );
  }
}
