import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SmartCulto',
      theme: ThemeData(
        primaryColor: const Color(0xFF0B3B6E),
        scaffoldBackgroundColor: const Color(0xFFF4F6F9),
      ),
      home: LoginPage(),
    );
  }
}