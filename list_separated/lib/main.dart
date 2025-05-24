import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  var arrFruits = ['Apple', 'Mango', 'Orange', 'Banana'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 10, bottom: 10 , left: 10 , right: 10 ),
        itemBuilder: (context, index) {
          return Text(
            arrFruits[index],
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          );
        },
        itemCount: arrFruits.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 50,
            thickness: 5,
            color: Colors.cyan,
          );
        },
      ),
    ); // ← this was missing or incorrectly closed
  }
}
