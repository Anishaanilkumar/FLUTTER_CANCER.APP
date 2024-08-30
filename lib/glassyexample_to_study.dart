import 'dart:ui';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1760),
      body: Stack(
        children: [
          Center(
            child: ClipRRect(
              borderRadius:BorderRadius.all(Radius.circular(25)),
            child: BackdropFilter(
              filter:  ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: Container(
                width: 450,
                height: 250,
                decoration:  BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}