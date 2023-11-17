import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Color/colors.dart';

// ignore: must_be_immutable
class MyDropdown extends StatelessWidget {
  MyDropdown({super.key, required this.text1, this.text2});
  final String text1;
  String? text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
            alignment: Alignment.topLeft,
            //textfield container
            child: Column(children: [
              Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: Row(children: [
                    Text(text1),
                    const Text(
                      '*',
                      style: TextStyle(color: Pallete.redColor),
                    ),
                  ])),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomDropDown(original: '10 : 00'),
                  Center(
                    child: Text(
                      '~',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                  ),
                  CustomDropDown(original: '10 : 00'),
                ],
              ),
            ])));
  }
}

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    super.key,
    required this.original,
  });
  final String original;
  @override
  Widget build(BuildContext context) {
    defaultdropmenu = original;
    if (original != TimeCategories[0]) {
      TimeCategories[0] = original;
    }
    return Container(
      padding: EdgeInsets.only(left: 5),
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height / 19,
      width: MediaQuery.of(context).size.width / 2.6,
      decoration: BoxDecoration(
          color: Pallete.whiteColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(10),
          border: Border.all()),

      //dropdown

      child: DropdownButton(
        isExpanded: true,
        borderRadius: BorderRadius.circular(1),
        underline: const SizedBox(),
        // dropdownColor: Pallete.iceBlue,
        hint: const Text('defaultdropmenu'),
        value: defaultdropmenu,
        icon: const Icon(
          Icons.keyboard_arrow_down,
          color: Pallete.black,
        ),
        items: TimeCategories.map((String item) {
          return DropdownMenuItem(
            alignment: Alignment.center,
            value: item,
            child: NormalText(
              thetext: item,
              color: Pallete.black,
            ),
          );
        }).toList(),
        onChanged: (String? newCat) {
          defaultdropmenu = newCat!;
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class NormalText extends StatelessWidget {
  NormalText({super.key, required this.thetext, this.color, this.size});
  final String thetext;
  Color? color;
  double? size;
  @override
  Widget build(BuildContext context) {
    return Text(
      thetext,
      style: TextStyle(color: color ?? Pallete.black, fontSize: size ?? 15),
    );
  }
}

String defaultdropmenu = '10 : 00';

List<String> TimeCategories = [
  '10 : 00',
  '11 : 00',
  '12 : 00',
  '01 : 00',
  '02 : 00',
  '03 : 00',
  '04 : 00',
  '05 : 00'
];
