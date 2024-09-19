import 'package:flutter/material.dart';
import 'package:project_app/auth/auth_service.dart';
import 'package:project_app/auth/glassyloginclg.dart'; 

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = AuthService();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 48, 90, 163),
        title: Text("HEALMATE"),
        leading: IconButton(
          icon: Icon(Icons.logout),
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
              icon: Icon(Icons.list),
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
                color: Color.fromARGB(255, 48, 90, 163),
              ),
              child: Text(
                'Explore',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('Chatbot'),
              onTap: () {
                Navigator.of(context).pop();
                // Implement navigation or action here
              },
            ),
            ListTile(
              leading: Icon(Icons.self_improvement),
              title: Text('Meditation Module'),
              onTap: () {
                Navigator.of(context).pop();
                // Implement navigation or action here
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Personality Test'),
              onTap: () {
                Navigator.of(context).pop();
                // Implement navigation or action here
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.of(context).pop();
                // Implement navigation or action here
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/bg2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Center(
              child: Text(
                'Welcome to HealMate!',
                style: TextStyle(
                    fontSize: 40, color: const Color.fromARGB(255, 12, 12, 12)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
