import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationSplashScreen extends StatelessWidget {
  const AnimationSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 3, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers the content vertically
          children: [
            // Increase the size of the animation
             const SizedBox(height:200),
            Lottie.asset(
              'assets/lottie/Animation.json',
              height: 200, // Adjust height as needed
              width: 200,  // Adjust width as needed
            ),
            const SizedBox(height:200), // Adds space between the animation and the text
            const Text(
              'Made With LOVE........❤',
              style: TextStyle(
                fontSize: 15, // Adjust font size as needed
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 237, 92, 150), // Adjust text color as needed
                /*shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: Color.fromARGB(255, 241, 238, 238),
                    offset: Offset(2.0, 2.0),
                  ),
                ],*/
              ),
            ),
          ],
        ),
      ),
    );
  }
}
