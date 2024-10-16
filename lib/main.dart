import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_app/widget/geminiai.dart';
import 'package:project_app/widget/HomeScreen.dart';

import 'package:project_app/widget/AnimationSplashScreen.dart';

import 'package:project_app/auth/glassyloginclg.dart';
import 'package:project_app/auth/glassregister.dart';
import 'package:project_app/widget/ImageSplashScreen.dart';


void main() async {
WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
  await Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyCjEtJP6fv5GqdQ-NgU6lONL3PEnnVf2Xc",
  authDomain: "healmate-806ac.firebaseapp.com",
  projectId: "healmate-806ac",
  storageBucket: "healmate-806ac.appspot.com",
  messagingSenderId: "989938559936",
  appId: "1:989938559936:web:b594671ca4aaaade74b625",
  measurementId: "G-G9EGN04LWN"));}
  else{
   await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //0
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:ChatScreen(),
    );
  }
}

