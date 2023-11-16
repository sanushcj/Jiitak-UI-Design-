import 'package:flutter/material.dart';

class CustomAppBarUI extends StatelessWidget {
  const CustomAppBarUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height / 5,
        width: double.infinity,
        color: Colors.green,
      ),
    );
  }
}
