import 'package:flutter/material.dart';
import 'package:project_app/HomeScreen.dart';
import 'dart:ui';

import 'package:project_app/glassyexample_to_study.dart'; // Import for ImageFilter

class Glass extends StatelessWidget {
   Glass({super.key});
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/glassybg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration( boxShadow: [BoxShadow(
                blurRadius: 20,
                spreadRadius: 14,
                color: Colors.black.withOpacity(0.2))
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 8.0,
                  sigmaY: 8.0,
                ),
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 17, 16, 16).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width:1.5,
                      color: const Color.fromARGB(255, 15, 15, 15).withOpacity(0.3)
            
                    )
                  ),
                  
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'HEALMATE',
                        
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 247, 246, 246),
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 20),
                    
                      // Username input field
                      TextFormField(
                        controller: _usernameController,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(color: Colors.white),
                        
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      // Password input field
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.white),
                        
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      // Login button
                      ElevatedButton(
                        onPressed: () {
                          final username = _usernameController.text;
                          final password = _passwordController.text;
                          // Add your login logic here (e.g., authentication)
                          print('Username: $username');
                          print('Password: $password');
                         Navigator.push(context, MaterialPageRoute(builder:(context)=> Homescreen()));
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Color.fromARGB(255, 11, 11, 11), fontWeight: FontWeight.bold),
                        ),
                      ),
                      
                    ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),);
  }
}
