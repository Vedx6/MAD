import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: GestureDetector(
          // Detecting user interaction [cite: 19-21]
          onTap: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            color: Colors.blue,
            child: const Text(
              'Tap to Go to Second Page',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
