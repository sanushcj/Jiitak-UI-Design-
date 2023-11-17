import 'package:flutter/material.dart';

import '../../Color/colors.dart';
import '../../constants/constants.dart';
import 'dropdownpage.dart';

class SecondDD extends StatelessWidget {
  const SecondDD({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 10,
      // color: Pallete.greyColor,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('料理力ㄇㄧˋ'),
              Text(
                '*',
                style: TextStyle(color: Pallete.redColor),
              ),
            ],
          ),
          rrHeight10,
          CustomDropDown(
            original: '料理力于写一選択',
          ),
        ],
      ),
    );
  }
}
