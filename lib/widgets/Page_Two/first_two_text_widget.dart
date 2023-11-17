import 'package:flutter/material.dart';

import '../../Color/colors.dart';

class FirstTwoTextWidget extends StatelessWidget {
  const FirstTwoTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(15),
      height: MediaQuery.sizeOf(context).height / 4,
      color: Pallete.lightbluee.withOpacity(0.6),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Mer キッチン',
            style: TextStyle(fontSize: 17, color: Pallete.whiteColor),
          ),
          SizedBox(
            child: Row(
              children: [
                Text(
                  '現在の獲得数',
                  style: TextStyle(fontSize: 17, color: Pallete.whiteColor),
                ),
                Text(
                  '30',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Pallete.whiteColor),
                ),
                Text(
                  '個',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Pallete.whiteColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
