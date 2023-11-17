import 'package:flutter/material.dart';
import '../../Color/colors.dart';
import '../../constants/constants.dart';

class ScreenTwoTile extends StatelessWidget {
  const ScreenTwoTile({
    super.key,
    required this.newIndex,
  });
  final int newIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height / 12,
      // color: Pallete.lightpurple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '2021 / 11 / ${18 - newIndex}',
            style: const TextStyle(color: Pallete.greyColor),
          ),
          rrHeight10,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('スタンプを獲得しました。'),
              Text(
                '1個',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
