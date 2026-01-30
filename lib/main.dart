import 'package:flutter/material.dart';
import 'signup.dart'; // 👈 මෙන්න මේක අනිවාර්යයෙන්ම තියෙන්න ඕනේ

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(), // 👈 මෙතනින් තමයි Sign Up පිටුවට යන්නේ
    );
  }
}
