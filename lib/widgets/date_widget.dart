import 'package:flutter/material.dart';

import '../Color/colors.dart';
import '../constants/constants.dart';

class CalenderDateWidget extends StatelessWidget {
  const CalenderDateWidget(
      {super.key,
      required this.numDate,
      required this.japanDate,
      required this.newindex});
  final String numDate;
  final String japanDate;
  final int newindex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: newindex == 0 ? Pallete.yellow : Pallete.whiteColor,
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(numDate,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          rrHeight10,
          Text(japanDate,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
        ],
      ),
    );
  }
}
