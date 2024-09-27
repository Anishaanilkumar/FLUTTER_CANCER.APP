import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project_app/auth/auth_service.dart';
import 'package:project_app/auth/glassregister.dart'; 
import 'package:project_app/widget/HomeScreen.dart'; 
class Glass extends StatefulWidget {
  const Glass({super.key});

  @override
  _GlassState createState() => _GlassState();
}

class _GlassState extends State<Glass> {
  final AuthService _auth = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/glassbg1.jpg"),
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
                    color: Color.fromARGB(255, 17, 16, 16).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1.5,
                      color: const Color.fromARGB(255, 15, 15, 15).withOpacity(0.3),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                      const SizedBox(height: 20),
                      const Text("Welcome Back ..",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 254, 254, 255),
                          
                        ),),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _emailController,
                        style: const TextStyle(color: Color.fromARGB(255, 249, 248, 248)),
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Color.fromARGB(255, 251, 250, 250)),
                         
                              prefixIcon: Icon(Icons.email, color: Color.fromARGB(255, 247, 246, 246)),  
                        ),
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        style: const TextStyle(color: Color.fromARGB(255, 252, 250, 250)),
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Color.fromARGB(255, 250, 248, 248)),
                         
                           prefixIcon: Icon(Icons.lock, color: Color.fromARGB(255, 252, 252, 252)),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Color.fromARGB(255, 9, 9, 9),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: _login,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Text("If don't have an account? ",style: TextStyle(color: const Color.fromARGB(255, 253, 252, 252)),),
                          GestureDetector(
                            onTap: () => goToSignup(context),
                            child: const Text(
                              "Signup",
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

  void goToSignup(BuildContext context) => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Register()),
  );

  void goToHome(BuildContext context) => Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const Homescreen()),
  );

  Future<void> _login() async {
    final user = await _auth.loginUserWithEmailAndPassword(
      _emailController.text, 
      _passwordController.text,
    );

    if (user != null) {
      log("User Logged In");
      goToHome(context);
    } else {
      log("Login Failed");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login Failed')),
      );
    }
  }
}
