import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:jiitak_ui_test/Color/colors.dart';
import 'package:jiitak_ui_test/constants/constants.dart';
import 'package:jiitak_ui_test/widgets/date_widget.dart';
import '../widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_AppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 21,
            color: Colors.amber,
            child: const Text('2022年5月26日  (木)'),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // shrinkWrap: true,
                // scrollDirection: Axis.vertical,
                children: [
                  rrHeight20,
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                    child: ListView.separated(
                      padding: const EdgeInsets.all(5),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      separatorBuilder: (context, index) => rrwidth10,
                      itemCount: tempCalender.length,
                      itemBuilder: (context, index) => CalenderDateWidget(
                          newindex: index,
                          numDate: tempCalender[index]['japan'].toString(),
                          japanDate: tempCalender[index]['Date'].toString()),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Container(
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
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/img/Careworker One.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15)),
                                color: Pallete.purpleColor,
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
                                      style: TextStyle(
                                          color: Pallete.whiteColor,
                                          fontSize: 9),
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
                                    Text(feedText[0]['title1'].toString(),
                                        style: const TextStyle(
                                            color: Pallete.black,
                                            fontSize: 12)),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                          feedText[0]['title2'].toString(),
                                          style: const TextStyle(
                                              color: Pallete.black,
                                              fontSize: 12)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, bottom: 5),
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: MediaQuery.sizeOf(context)
                                                    .height /
                                                36,
                                            width: 120,
                                            decoration: BoxDecoration(
                                                color: Pallete.yellow
                                                    .withOpacity(0.5),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: const SizedBox(
                                              width: double.infinity,
                                              child: Center(
                                                child: Text(
                                                  '有料老人ホーム',
                                                  style: TextStyle(
                                                      color: Pallete.yellow,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          '¥6,000',
                                          style: TextStyle(
                                              color: Pallete.black,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 3.0, bottom: 3),
                                      child: Text(
                                          feedText[0]['title3'].toString(),
                                          style: const TextStyle(
                                              color: Pallete.black,
                                              fontSize: 12)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 3.0, bottom: 5),
                                      child: Text(
                                          feedText[0]['title4'].toString(),
                                          style: const TextStyle(
                                              color: Pallete.black,
                                              fontSize: 12)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 3.0, bottom: 5),
                                      child: Text(
                                          feedText[0]['title5'].toString(),
                                          style: const TextStyle(
                                              color: Pallete.black,
                                              fontSize: 12)),
                                    ),
                                    Text(feedText[0]['title6'].toString(),
                                        style: const TextStyle(
                                            color: Pallete.greyColor,
                                            fontSize: 12)),
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
} //
//
//
//
//
//

List<Map<String, String>> feedText = [
  {
    'title1': '介護有料老人ホームひまわり倶楽部の介護職/ヘ',
    'title2': 'ルパー求人 (パート/バイト)',
    'title3': '5月 31日 (水) 08:00~17:00',
    'title4': '北海道札幌市東雲町3丁目916番地17号',
    'title5': ' 交通費300円',
    'title6': '住宅型有料老人ホームひまわり倶楽部',
  },
  {
    'title1': '介護有料老人ホームひまわり倶楽部の介護職/ヘ',
    'title2': 'ルパー求人 (パート/バイト)',
    'title3': '5月 31日 (水) 08:00~17:00',
    'title4': '北海道札幌市東雲町3丁目916番地17号',
    'title5': ' 交通費300円',
    'title6': '住宅型有料老人ホームひまわり倶楽部',
  },
  {
    'title1': '介護有料老人ホームひまわり倶楽部の介護職/ヘ',
    'title2': 'ルパー求人 (パート/バイト)',
    'title3': '5月 31日 (水) 08:00~17:00',
    'title4': '北海道札幌市東雲町3丁目916番地17号',
    'title5': ' 交通費300円',
    'title6': '住宅型有料老人ホームひまわり倶楽部',
  },
  {
    'title1': '介護有料老人ホームひまわり倶楽部の介護職/ヘ',
    'title2': 'ルパー求人 (パート/バイト)',
    'title3': '5月 31日 (水) 08:00~17:00',
    'title4': '北海道札幌市東雲町3丁目916番地17号',
    'title5': ' 交通費300円',
    'title6': '住宅型有料老人ホームひまわり倶楽部',
  },
  {
    'title1': '介護有料老人ホームひまわり倶楽部の介護職/ヘ',
    'title2': 'ルパー求人 (パート/バイト)',
    'title3': '5月 31日 (水) 08:00~17:00',
    'title4': '北海道札幌市東雲町3丁目916番地17号',
    'title5': ' 交通費300円',
    'title6': '住宅型有料老人ホームひまわり倶楽部',
  },
  {
    'title1': '介護有料老人ホームひまわり倶楽部の介護職/ヘ',
    'title2': 'ルパー求人 (パート/バイト)',
    'title3': '5月 31日 (水) 08:00~17:00',
    'title4': '北海道札幌市東雲町3丁目916番地17号',
    'title5': ' 交通費300円',
    'title6': '住宅型有料老人ホームひまわり倶楽部',
  },
];

int datevalue = 0;
List<Map<String, String>> tempCalender = [
  {'Date': '26', 'japan': '木'},
  {'Date': '27', 'japan': '金'},
  {'Date': '28', 'japan': '土'},
  {'Date': '29', 'japan': '日'},
  {'Date': '30', 'japan': '月'},
  {'Date': '31', 'japan': '火'},
  {'Date': '01', 'japan': '木'},
  {'Date': '02', 'japan': '金'},
  {'Date': '03', 'japan': '土'},
  {'Date': '04', 'japan': '日'},
  {'Date': '05', 'japan': '月'},
  {'Date': '06', 'japan': '火'},
];
