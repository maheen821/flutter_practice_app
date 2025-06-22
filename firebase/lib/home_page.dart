import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class HomePage extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  final dbRef = FirebaseDatabase.instance.ref("users");

  void saveData(String name, String email) {
    dbRef.push().set({
      'name': name,
      'email': email,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Firebase Realtime Example")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                saveData(nameController.text, emailController.text);
              },
              child: const Text("Save to Firebase"),
            ),
          ],
        ),
      ),
    );
  }
}
