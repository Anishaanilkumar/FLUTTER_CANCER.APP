import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Glass extends StatelessWidget {
  const Glass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
                  
                    
                      
                        child: Center(
                          child: Container(
                            height: 300,
                            width: 300,
                            decoration: BoxDecoration(
                               color: Colors.white.withOpacity(0.2),
                               borderRadius: BorderRadius.circular(15)
                            ),
                           
                          
                                          ),
                        ),
                      
                    
                
              
            
          
        
      ),
    );
  }
}

