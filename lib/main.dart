import 'package:flutter/material.dart';
import 'package:jiitak_ui_test/Pages/uione.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Jiitak UI",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
