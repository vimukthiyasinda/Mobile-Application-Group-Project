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
        style: TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold),),
      ),
    );
  }
}