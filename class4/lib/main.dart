import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(
          padding: const EdgeInsets.only(top: 30, bottom: 30 , left: 10 , right: 10 ),
        children:[
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: 50,
            color: Colors.amber[600],
            child: Center(child: Text('Entry A' ,  style:TextStyle(fontSize:20 , fontWeight: FontWeight.w500),)),
          ),
      Container(
        margin: const EdgeInsets.only(bottom: 20),
          height: 50,
          color: Colors.amber[500],
          child: Center(child:Text('Entry B' ,  style:TextStyle(fontSize:20 , fontWeight: FontWeight.w500),)),
      ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: 50,
            color: Colors.amber[300],
            child: Center(child: Text('Entry C' , style:TextStyle(fontSize:20 , fontWeight: FontWeight.w500),)),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: 50,
            color: Colors.amber[100],
            child: Center(child: Text('Entry D' , style:TextStyle(fontSize:20 , fontWeight: FontWeight.w500),)),
          )


        ]
        ),
    );
  }
}
