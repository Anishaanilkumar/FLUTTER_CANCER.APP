import 'package:flutter/material.dart';
import 'package:project_app/auth/glassregister.dart';
import 'package:project_app/auth/glassyloginclg.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/bg1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent, 
        appBar: AppBar(
          title: Text("      HEALMATE",style: TextStyle(color: Color.fromARGB(255, 245, 243, 244)),),
          backgroundColor: Color.fromARGB(255, 225, 118, 154),
          leading: 
          Image.asset('assets/image/cancerapplogo.png'),
        ),
        body: Column(
          
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=> Glass()));
                  },
                  child: Text('SIGN IN'),

                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Color.fromARGB(255, 14, 14, 14), 
                    padding: EdgeInsets.symmetric(horizontal: 90, vertical: 30), 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(left: Radius.zero,right: Radius.zero),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Register()));
                  },
                  child: Text('SIGN UP'),
                    style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Color.fromARGB(255, 114, 8, 70),  
                    padding: EdgeInsets.symmetric(horizontal: 90, vertical: 30), 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(left: Radius.zero,right: Radius.zero), 
                    ),
                  ),
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}