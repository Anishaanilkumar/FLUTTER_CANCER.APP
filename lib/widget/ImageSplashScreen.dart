import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:project_app/widget/AnimationSplashScreen.dart';

class ImageSplashScreen extends StatelessWidget {
  const ImageSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Stack(
        children: [
          Positioned.fill(
            child: FadeInImage(
              placeholder: AssetImage('assets/image/placeholder.jpg'),
              image: AssetImage('assets/image/bg4.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Image.asset(
              'assets/image/cancerapplogo.png',
              height: 150,
              width: 150,
            ),
          ),
        ],
      ),
      nextScreen: const AnimationSplashScreen(),
      splashIconSize: double.infinity,
      backgroundColor: Colors.transparent,
      duration: 3000,
    );
  }
}
