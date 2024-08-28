import 'package:flutter/material.dart';
import 'home_page.dart'; // Import your HomePage widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // Your HomePage widget
    );
  }
}
