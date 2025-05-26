import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListTile with Image',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListTile with Image'),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                 'https://media.istockphoto.com/id/994751270/photo/portrait-young-asian-businesswoman-holding-tablet-smartphone-in-formal-suit-in-office-with.jpg?s=612x612&w=0&k=20&c=EaYoCuTyMKl2_U6z5oFoT0j1U3xj1ZHA9mew2G6_WSs=', // Profile Image URL
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
