import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project_app/auth/auth_service.dart'; 
import 'package:project_app/widget/HomeScreen.dart'; 
import 'package:project_app/auth/glassyloginclg.dart'; 

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService(); 
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>(); // Added form key

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _signup() async {
    if (_formKey.currentState!.validate()) {
      final email = _emailController.text;
      final password = _passwordController.text;
      final user = await _auth.createUserWithEmailAndPassword(email, password);
      if (user != null) {
        log("User Created Successfully");
        goToHome(context);
      }
    }
  }

  void goToLogin(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Glass()),
      );

  void goToHome(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Homescreen()),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/bg4.jpg"),
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
                  sigmaX: 5.0,
                  sigmaY: 5.0,
                ),
                child: Container(
                  height: 450,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 17, 16, 16).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1.5,
                      color: const Color.fromARGB(255, 15, 15, 15).withOpacity(0.1),
                    ),
                  ),
                  child: Form(
                    key: _formKey, // Wrap fields inside Form widget
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'HEALMATE',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(255, 255, 255, 255), // Changed to white
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: _usernameController,
                          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)), // Changed to white
                          decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)), // Changed to white
                            prefixIcon: Icon(Icons.person, color: Colors.white), // Changed to white
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: _emailController,
                          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)), // Changed to white
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)), // Changed to white
                            prefixIcon: Icon(Icons.email, color: Colors.white), // Changed to white
                            errorStyle: const TextStyle(color: Colors.white), // White error message
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)), // Changed to white
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)), // Changed to white
                            prefixIcon: Icon(Icons.lock, color: Colors.white), // Changed to white
                            errorStyle: const TextStyle(color: Colors.white), // White error message
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            } else if (value.length < 8) {
                              return 'Password must be at least 8 characters long';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: _confirmPasswordController,
                          obscureText: true,
                          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)), // Changed to white
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)), // Changed to white
                            prefixIcon: Icon(Icons.lock_outline, color: Colors.white), // Changed to white
                            errorStyle: const TextStyle(color: Colors.white), // White error message
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please confirm your password';
                            } else if (value != _passwordController.text) {
                              return 'Passwords do not match';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: _signup,
                          child: const Text(
                            'REGISTER',
                            style: TextStyle(
                              color: Color.fromARGB(255, 8, 8, 8), // Changed to white
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account? ",
                              style: TextStyle(color: Colors.white), // Changed to white
                            ),
                            GestureDetector(
                              onTap: () => goToLogin(context),
                              child: const Text(
                                "Login",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                      ],
                    ),
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
