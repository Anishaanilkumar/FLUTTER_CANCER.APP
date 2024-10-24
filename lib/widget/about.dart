import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  void _showEmailDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('Email: support@healmate.com'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' HEALMATE',style: TextStyle(color: Color(0xFF800020),fontWeight: FontWeight.w900),),
        backgroundColor: Colors.white, 
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/image/cancerapplogo.png',
                width: 150,
                height: 150,
              ),
            ),
            SizedBox(height: 20),
            _buildSectionContainer(
              title: 'Welcome to HealMate',
              content: 'HealMate supports individuals affected by cancer with a chatbot, guided meditations, support videos, and inspiring survival stories.',
            ),
            SizedBox(height: 20),
            _buildSectionContainer(
              title: 'Mission',
              content: 'To provide compassionate support and resources for those affected by cancer.',
            ),
            SizedBox(height: 20),
            _buildSectionContainer(
              title: 'Vision',
              content: 'To create a world where every cancer patient feels supported and informed, leading to better health outcomes and quality of life.',
            ),
            SizedBox(height: 20),
            _buildSectionContainer(
              title: 'Our Values',
              content: '    • Empathy  • Support  • Community  • Empowerment           ',
              isValues: true,
            ),
            SizedBox(height: 20),
            _buildSectionContainer(
              title: 'Get in Touch',
              content: 'We would love to hear from you! Reach out to us for any questions or support.',
              isContact: true,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _showEmailDialog(context),
              child: Text('Contact Us', style: TextStyle(color: const Color.fromARGB(255, 218, 12, 12))),
              style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 247, 250, 250)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionContainer({required String title, required String content, bool isValues = false, bool isContact = false}) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 10), 
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF800020)), 
          ),
          SizedBox(height: 10),
          if (isValues)
            Text(
              content,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            )
          else
            Text(
              content,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
        ],
      ),
    );
  }
}
