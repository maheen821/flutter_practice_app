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
      debugShowCheckedModeBanner: false,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 20 , right: 20 ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 11),
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 11),
                        height: 100,
                        width: 100,
                        color: Colors.yellow,
                      ),
                      Container(

                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
              // 🟦 First Blue Container (full width)
              Container(
                margin: const EdgeInsets.only(bottom: 11),
                width: 200, // 👈 Full width of screen
                height: 200,
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Text(
                      'This is my beautiful app',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),

              // 🟦 Second Blue Container (full width)
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                width: 200, // 👈 Full width of screen
                height: 200,
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.only(left:10 ,right:10),
                  child: Center(
                    child: Text(
                      'Second Box',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:30,
                      ),

                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

