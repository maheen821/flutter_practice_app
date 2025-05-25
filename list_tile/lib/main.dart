import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListTile with Image',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListTile with Image'),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://img.freepik.com/free-photo/brunette-business-woman-with-wavy-long-hair-blue-eyes-stands-holding-notebook-hands_197531-343.jpg?ga=GA1.1.2138475416.1746203286&semt=ais_hybrid&w=740', // Profile Image URL
                ),
              ),
              title: Text('Maheen Qamar'),
              subtitle: Text('Flutter Developer'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                print('Tapped on Maheen');
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/150?img=8',
                ),
              ),
              title: Text('Ahmed Khan'),
              subtitle: Text('Mobile App Designer'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                print('Tapped on Ahmed');
              },
            ),
          ],
        ),
      ),
    );
  }
}
