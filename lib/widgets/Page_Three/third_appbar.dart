import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Color/colors.dart';
import '../../Pages/uithree.dart';

AppBar thirdAppBar() {
  return AppBar(
    centerTitle: true,
    // elevation: 0,
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
          // maxRadius: 1,
          backgroundColor: Pallete.greyColor.withOpacity(0.7),
          radius: 5,
          child: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              CupertinoIcons.back,
              color: Pallete.black,
            ),
          )),
    ),
    backgroundColor: Pallete.whiteColor,
    title: const Text(
      '店舗 ンプカードlL編集',
      style: TextStyle(fontSize: 15, color: Pallete.black),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Stack(children: [
          IconButton(
            icon: const Icon(Icons.notifications_none_rounded,
                size: 26, color: Pallete.black),
            onPressed: () => Get.to(const UIPageThree()),
          ),
          const Positioned(
            left: 24,
            top: 10,
            child: CircleAvatar(
              radius: 8,
              backgroundColor: Pallete.orange,
              child: Text(
                "99+",
                style: TextStyle(fontSize: 8, color: Pallete.whiteColor),
              ),
            ),
          )
        ]),
      )
    ],
  );
}
