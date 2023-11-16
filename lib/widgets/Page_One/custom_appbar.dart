import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar Custom_AppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    title: CupertinoSearchTextField(
      borderRadius: BorderRadius.circular(30),
      prefixIcon: const SizedBox(),
      enabled: true,
      placeholder: '北海道,札幌市',
      placeholderStyle: const TextStyle(color: Colors.black, fontSize: 12),
      backgroundColor: Colors.grey[150],
    ),
    actions: const [
      Icon(
        size: 30,
        Icons.equalizer,
        color: Colors.grey,
      ),
      SizedBox(
        width: 5,
      ),
      Icon(
        CupertinoIcons.suit_heart,
        color: Colors.red,
        size: 30,
      ),
      SizedBox(
        width: 5,
      ),
    ],
  );
}
