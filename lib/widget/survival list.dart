import 'package:flutter/material.dart';
import 'package:project_app/widget/survivaldetail.dart';



// This is the main page that shows a list of survivor patients
class SurvivorListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Survivor Stories'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: survivorDetails.length,
          itemBuilder: (context, index) {
            final detail = survivorDetails[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              elevation: 4, // Adds shadow for card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Rounded corners
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(16.0), // Add padding inside the card
                leading: CircleAvatar(
                  backgroundImage: AssetImage(detail.imagePath),
                  radius: 30,
                ),
                title: Text(
                  detail.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Text(
                  detail.author,
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.teal,
                ),
                onTap: () {
                  // Navigate to SurvivorDetailScreen with the selected detail
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SurvivorDetailScreen(detail: detail),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
