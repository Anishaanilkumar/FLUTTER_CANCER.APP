import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_app/HomeScreen.dart';

class Register extends StatelessWidget {
   Register({super.key});
   final TextEditingController UsernameController = TextEditingController();
 
   final TextEditingController EmailController = TextEditingController();
   final TextEditingController PasswordController = TextEditingController();
   final TextEditingController ConfirmPasswordController = TextEditingController();

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
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  spreadRadius: 14,
                  color: Colors.black.withOpacity(0.2),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 8.0,
                  sigmaY: 8.0,
                ),
                child: Container(
                  height: 500,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 17, 16, 16).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1.5,
                      color: const Color.fromARGB(255, 15, 15, 15).withOpacity(0.3),
                    ),
                  ),
                  
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                    
                      TextFormField(
                        controller: UsernameController,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(color: Colors.white),
                        
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                        const SizedBox(height: 20),
                    
                      TextFormField(
                        controller: EmailController,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.white),
                        
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                        const SizedBox(height: 20),
                    
                      TextFormField(
                        controller: PasswordController,
                         obscureText: true,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.white),
                        
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),  const SizedBox(height: 20),
                    
                      TextFormField(
                        controller: ConfirmPasswordController,
                         obscureText: true,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Confirm password',
                          labelStyle: TextStyle(color: Colors.white),
                        
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                        const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          final Username = UsernameController.text;
                          final Email = EmailController.text;
                          final password = PasswordController.text;
                          final Confirm_Password = ConfirmPasswordController.text;
                          // Add your login logic here (e.g., authentication)
                          print(' Username: $Username');
                           print(' Email: $Email');                        
                           print(' password: $password');
                            print('Confirm_Password : $Confirm_Password ');
                            if(password==Confirm_Password){
                         Navigator.push(context, MaterialPageRoute(builder:(context)=> Homescreen()));}
                        },
                        child: const Text(
                          'REGISTER',
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
        ),
      );
  }
}