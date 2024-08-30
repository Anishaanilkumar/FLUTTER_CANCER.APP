import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:project_app/AnimationSplashScreen.dart';

class ImageSplashScreen extends StatelessWidget {
  const ImageSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Stack(
        children: [
          // Blue image as background
          Positioned.fill(
            child: Image.asset(
              'assets/image/bg1.jpg', // Replace with your blue background image path
              fit: BoxFit.cover, // Ensure the background covers the entire screen
            ),
          ),
          // Cancer logo image
          Center(
            child: Image.asset(
              'assets/image/cancerapplogo.png',
              height: 150,
              width: 150,
            ),
          ),
        ],
      ),
      nextScreen: const AnimationSplashScreen(), // Navigates to the animation screen
      splashIconSize: double.infinity, // Ensure it covers the full screen
      backgroundColor: Colors.transparent, // Set background color to transparent to show the image
      duration: 3000, // Adjust duration as needed
    );
  }
}
