import 'package:flutter/material.dart';
// import 'package:jiitak_ui_test/Pages/uione.dart';
import 'bottom_nav bar/custombottomnavbar.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Jiitak UI",
      debugShowCheckedModeBanner: false,
      home: ScreenNavigation(),
    );
  }
}
