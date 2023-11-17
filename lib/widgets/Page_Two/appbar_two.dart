import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_ui_test/Pages/uithree.dart';

import '../../Color/colors.dart';

AppBar uiTwoAppBAR() {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
          // maxRadius: 1,
          backgroundColor: Pallete.lightbluee.withOpacity(0.7),
          radius: 5,
          child: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.back),
          )),
    ),
    backgroundColor: Pallete.lightbluee.withOpacity(0.6),
    title: const Text(
      'スタンプカード詳細',
      style: TextStyle(fontSize: 15),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 15),
        child: IconButton(
          icon: const Icon(Icons.do_not_disturb_on_outlined, size: 26),
          onPressed: () => Get.to(const UIPageThree()),
        ),
      )
    ],
  );
}
