import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("FontAwesome Icons")),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FaIcon(
                FontAwesomeIcons.instagram,
                color: Colors.purple,
                size: 50,
              ),
              SizedBox(width: 30),
              FaIcon(
                FontAwesomeIcons.facebook,
                color: Colors.blue,
                size: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
