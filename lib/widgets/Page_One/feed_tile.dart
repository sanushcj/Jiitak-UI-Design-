import 'package:flutter/material.dart';
import '../../Color/colors.dart';

class Feedtile extends StatelessWidget {
  const Feedtile(
      {super.key,
      required this.titleOne,
      required this.titleTwo,
      required this.amount,
      required this.titleThree,
      required this.titleFour,
      required this.titleFive,
      required this.titleSix,
      required this.img});

  final String titleOne;
  final String titleTwo;
  final String amount;
  final String titleThree;
  final String titleFour;
  final String titleFive;
  final String titleSix;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Pallete.black,
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
      ),
      height: MediaQuery.sizeOf(context).height / 2,
      // color: Pallete.redColor,
      width: double.infinity,
      child: Column(
        children: [
          Stack(clipBehavior: Clip.none, children: [
            Container(
              height: MediaQuery.sizeOf(context).height / 4,
              width: double.infinity,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                // color: Pallete.lightpurple,
              ),
            ),
            Positioned(
              top: 167,
              left: -6,
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.sizeOf(context).height / 40,
                width: 80,
                decoration: BoxDecoration(
                    color: Pallete.roseColor,
                    borderRadius: BorderRadius.circular(5)),
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      '本日まで',
                      style: TextStyle(color: Pallete.whiteColor, fontSize: 9),
                    ),
                  ),
                ),
              ),
            )
          ]),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Pallete.whiteColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(titleOne,
                        style: const TextStyle(
                            color: Pallete.black, fontSize: 12)),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(titleTwo,
                          style: const TextStyle(
                              color: Pallete.black, fontSize: 12)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 5),
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.sizeOf(context).height / 36,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Pallete.yellow.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(5)),
                            child: const SizedBox(
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  '有料老人ホーム',
                                  style: TextStyle(
                                      color: Pallete.yellow, fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          amount,
                          style: const TextStyle(
                              fontSize: 17,
                              color: Pallete.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0, bottom: 3),
                      child: Text(titleThree,
                          style: const TextStyle(
                              color: Pallete.black, fontSize: 12)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0, bottom: 5),
                      child: Text(titleFour,
                          style: const TextStyle(
                              color: Pallete.black, fontSize: 12)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0, bottom: 5),
                      child: Text(titleFive,
                          style: const TextStyle(
                              color: Pallete.black, fontSize: 12)),
                    ),
                    Text(titleSix,
                        style: const TextStyle(
                            color: Pallete.greyColor, fontSize: 12)),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
