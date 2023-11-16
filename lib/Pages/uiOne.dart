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
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                rrHeight20,
                SizedBox(
                  height: MediaQuery.of(context).size.height / 8,
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
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

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
