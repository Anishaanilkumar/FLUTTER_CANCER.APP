import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project_app/auth/auth_service.dart'; // Make sure this path is correct
import 'package:project_app/widget/HomeScreen.dart'; // Make sure this path is correct
import 'package:project_app/auth/glassyloginclg.dart'; // Make sure this path is correct

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService(); // Use AuthService instance
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _signup() async {
    final email = _emailController.text;
    final password = _passwordController.text;
    final confirmPassword = _confirmPasswordController.text;

    if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Passwords do not match')),
      );
      return;
    }

    final user = await _auth.createUserWithEmailAndPassword(email, password);
    if (user != null) {
      log("User Created Successfully");
      goToHome(context);
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
            image: AssetImage("assets/image/glassbg3.jpg"),
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
                  height: 400,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 17, 16, 16).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1.5,
                      color: const Color.fromARGB(255, 15, 15, 15).withOpacity(0.1),
                    ),
                  ),
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
                      
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _usernameController,
                        style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)), // Changed to white
                        decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)), // Changed to white
                          prefixIcon: Icon(Icons.person, color: Colors.white), // Changed to white
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _emailController,
                        style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)), // Changed to white
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)), // Changed to white
                          prefixIcon: Icon(Icons.email, color: Colors.white), // Changed to white
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)), // Changed to white
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)), // Changed to white
                          prefixIcon: Icon(Icons.lock, color: Colors.white), // Changed to white
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _confirmPasswordController,
                        obscureText: true,
                        style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)), // Changed to white
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)), // Changed to white
                          prefixIcon: Icon(Icons.lock_outline, color: Colors.white), // Changed to white
                        ),
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
    );
  }
}
