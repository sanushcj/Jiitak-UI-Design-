import 'package:flutter/material.dart';

import '../../Color/colors.dart';

class TickMark extends StatelessWidget {
  TickMark({
    Key? key,
    required this.text1,
  }) : super(key: key);

  final String text1;

  final List<CheckModal> checkBoxList = [
    CheckModal(title: '月', value: false),
    CheckModal(title: '月', value: false),
    CheckModal(title: '月', value: false),
    CheckModal(title: '月', value: false),
    CheckModal(title: '月', value: true),
    CheckModal(title: '月', value: true),
    CheckModal(title: '月', value: true),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 7,
      // color: Pallete.lightpurple,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(text1),
              const Text(
                '*',
                style: TextStyle(color: Pallete.redColor),
              ),
            ],
          ),
          Flexible(
            child: Wrap(
              direction: Axis.horizontal,
              runSpacing: 2,
              children: checkBoxList.map((checkBox) {
                return Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CheckBoxICon(
                        valueBox: checkBox,
                        textBox: checkBox.title,
                        onItemClicked: onItemClicked,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  void onItemClicked(CheckModal theitem) {
    // Implement your logic for handling item clicks here
  }
}

class CheckBoxICon extends StatelessWidget {
  const CheckBoxICon({
    Key? key,
    required this.valueBox,
    required this.textBox,
    required this.onItemClicked,
  }) : super(key: key);

  final CheckModal valueBox;
  final String textBox;
  final Function(CheckModal) onItemClicked;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          checkColor: Pallete.whiteColor,
          activeColor: Pallete.orange,
          value: valueBox.value,
          onChanged: (val) {
            onItemClicked(valueBox);
          },
        ),
        Text(textBox),
      ],
    );
  }
}

class CheckModal {
  String title;
  bool value;

  CheckModal({
    required this.title,
    required this.value,
  });
}
