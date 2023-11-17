import 'package:flutter/material.dart';

import '../../Color/colors.dart';

class CommonTextfield extends StatelessWidget {
  const CommonTextfield({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        alignment: Alignment.topCenter,
        //textfield container
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Row(
              children: [
                Text('$text1'),
                Text(
                  '*',
                  style: TextStyle(color: Pallete.redColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: '$text2'),
            ),
          )
        ]),
      ),
    );
  }
}
