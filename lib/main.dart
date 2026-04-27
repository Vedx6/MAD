import 'package:flutter/material.dart';
import 'home_page.dart';
import 'second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation & Gestures',
      debugShowCheckedModeBanner: false,
      // Setting initial screen [cite: 16]
      initialRoute: '/',
      // Defining the route names [cite: 15-17]
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}
