import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          backgroundColor: const Color.fromARGB(255, 148, 135, 134),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}
