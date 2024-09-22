import 'package:flutter/material.dart';
import 'package:project_app/auth/auth_service.dart';
import 'package:project_app/auth/glassyloginclg.dart'; 

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = AuthService();

    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/image/bg2.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,//to show the bg
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 54, 52, 52).withOpacity(0.7), // Transparent appBar
            title: Text(
              "HEALMATE",
              style: TextStyle(
                color: Color.fromARGB(230, 236, 239, 238),
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.logout, color: Color.fromARGB(230, 236, 239, 238)),
              onPressed: () async {
                await auth.signout();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Glass()),
                );
              },
            ),
            actions: [
              Builder(
                builder: (context) => IconButton(
                  icon: Icon(Icons.list, color: Color.fromARGB(230, 236, 239, 238)),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 12, 12, 12),
                  ),
                  child: Text(
                    'Explore',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 247, 242, 242),
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.chat),
                  title: Text('Chatbot'),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.self_improvement),
                  title: Text('Meditation Module'),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Personality Test'),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text('About'),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 560),
              Center(
                child: Text(
                  'WELCOME TO HEALMATE !',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    
                    color: const Color.fromARGB(255, 12, 12, 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
