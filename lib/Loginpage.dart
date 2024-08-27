// ignore: file_names

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
      image: DecorationImage(
        fit:BoxFit.cover,
        image: AssetImage("assets/image/bg3.jpg"))),
        child: Center(
          child:BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
            child: const Column(
              children:[
                Text("cancer app",style: TextStyle(color: Colors.white,fontSize: 30),
                )
              ]
            ),
          )
        ),
        
      );
  }
}