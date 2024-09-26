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
          /*Positioned.fill(
            child: FadeInImage(
              placeholder: AssetImage('assets/image/bg4.jpg'),
              image: AssetImage('assets/image/bg4.jpg'),
              fit: BoxFit.cover,
            ),
          ),*/
       

          Center(
            child: Image.asset(
              'assets/image/cancerapplogo.png',
              height: 150,
              width: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end, 
              children: [
                Text(
                  "        “ A Journey of Healing, Guided by Love and Support.”",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.0,
                    color: const Color.fromARGB(255, 87, 85, 85),
                    letterSpacing: 1.2,
                  ),
                ),
              ],
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
