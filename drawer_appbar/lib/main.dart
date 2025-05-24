import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drawer Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = -1; // Default no item selected

  Widget buildDrawerItem({required IconData icon, required String title, required int index}) {
    return Container(
      color: _selectedIndex == index ? Colors.purple.shade100 : Colors.transparent,
      child: ListTile(
        leading: Icon(icon),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
          Navigator.pop(context); // Close drawer
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Personal App'),
        backgroundColor: Colors.pink,
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt),
            color: Colors.orangeAccent,
            onPressed: () {
              print("Camera icon pressed");
            },
          ),
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.black,
            onPressed: () {
              print("Plus icon pressed");
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 212,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/blue.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/girl.jpg'),
                        radius: 30,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Maheen Qamar',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'mq254411@gmail.com',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildDrawerItem(icon: Icons.inbox, title: 'Inbox', index: 0),
            buildDrawerItem(icon: Icons.snooze, title: 'Snoozed', index: 1),
            Divider(),
            buildDrawerItem(icon: Icons.done, title: 'Done', index: 2),
            buildDrawerItem(icon: Icons.drafts, title: 'Drafts', index: 3),
            buildDrawerItem(icon: Icons.send, title: 'Sent', index: 4),
            buildDrawerItem(icon: Icons.notifications, title: 'Reminders', index: 5),
            Divider(),
            buildDrawerItem(icon: Icons.settings, title: 'Settings', index: 6),
            buildDrawerItem(icon: Icons.help, title: 'Help and Question', index: 7),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Welcome to Flutter Drawer App!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
