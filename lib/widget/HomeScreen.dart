import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_app/auth/glassyloginclg.dart';

import 'package:project_app/widget/geminiai.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/image/news1.png',
      'assets/image/news2.png',
      'assets/image/news3.png',
      'assets/image/news4.jpg',
      'assets/image/news5.png',
    ];

    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/image/bg2.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 54, 52, 52).withOpacity(0.7),
            title: Text(
              "HEALMATE",
              style: TextStyle(
                color: Color.fromARGB(230, 236, 239, 238),
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.logout, color: Color.fromARGB(230, 236, 239, 238)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=> Glass()));
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
                     Navigator.push(context, MaterialPageRoute(builder:(context)=> ChatScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.self_improvement),
                  title: Text('Meditation Module'),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              /*  ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Personality Test'),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                 ListTile(
                  leading: Icon(Icons.format_quote),
                  title: Text('Affirmations'),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),*/
                 ListTile(
                  leading: Icon(Icons.article),
                  title: Text('Survival Stories'),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'WELCOME TO HEALMATE!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: const Color.fromARGB(255, 253, 251, 251),
                ),
              ),
              SizedBox(height: 20),
              CarouselSlider(
                options: CarouselOptions(height: 520.0, autoPlay: true),
                items: imgList.map((item) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FullImageScreen(imagePath: item),
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.black),
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FullImageScreen extends StatelessWidget {
  final String imagePath;

  const FullImageScreen({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CELEBRITY SURVIVALS'),
        backgroundColor: Color.fromARGB(255, 54, 52, 52).withOpacity(0.7),
      ),
      body: Center(
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain, 
        ),
      ),
    );
  }
}
