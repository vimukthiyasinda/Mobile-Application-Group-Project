import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),) );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Macdonal's",
        style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.amber,
        ),
        ),
        backgroundColor: const Color.fromARGB(255, 213, 21, 3),
        
      ),
    );
  }
}