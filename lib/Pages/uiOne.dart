// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_ui_test/Pages/uitwo.dart';
import 'package:jiitak_ui_test/constants/constants.dart';
// import 'package:jiitak_ui_test/widgets/Page_One/Page_One/date_widget.dart'
import 'package:jiitak_ui_test/widgets/Page_One/feed_tile.dart';
import '../widgets/Page_One/custom_appbar.dart';
import '../widgets/Page_One/date_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_AppBar(),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 21,
            color: Colors.amber,
            child: const Text('2022年5月26日 (木)'),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  rrHeight20,
                  // Date
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
                        japanDate: tempCalender[index]['Date'].toString(),
                      ),
                    ),
                  ),
                  // FeedTile
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Column(
                      children: List.generate(
                        feedText.length,
                        (index) => Column(
                          children: [
                            Feedtile(
                              img: feedText[index]['img'].toString(),
                              titleOne: feedText[index]['title1'].toString(),
                              titleTwo: feedText[index]['title2'].toString(),
                              amount: feedText[index]['amount'].toString(),
                              titleThree: feedText[index]['title3'].toString(),
                              titleFour: feedText[index]['title4'].toString(),
                              titleFive: feedText[index]['title5'].toString(),
                              titleSix: feedText[index]['title6'].toString(),
                            ),
                            if (index < feedText.length - 1) rrHeight20,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton.icon(
                        onPressed: () => Get.to(const UIPageTwo()),
                        icon: const Icon(CupertinoIcons.arrow_right),
                        label: const Text('Next UI')),
                  ),
                  rrHeight60
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Map<String, String>> feedText = [
  {
    'title1': '介護有料老人ホームひまわり倶楽部の介護職/ヘ',
    'title2': 'ルパー求人 (パート/バイト)',
    'amount': '¥6,000',
    'title3': '5月 31日 (水) 08:00~17:00',
    'title4': '北海道札幌市東雲町3丁目916番地17号',
    'title5': ' 交通費300円',
    'title6': '住宅型有料老人ホームひまわり倶楽部',
    'img': 'assets/img/Careworker One.jpg'
  },
  {
    'title1': '介護有料老人ホームひまわり倶楽部の介護職/ヘ',
    'title2': 'ルパー求人 (パート/バイト)',
    'amount': '¥6,000',
    'title3': '5月 31日 (水) 08:00~17:00',
    'title4': '北海道札幌市東雲町3丁目916番地17号',
    'title5': ' 交通費300円',
    'title6': '住宅型有料老人ホームひまわり倶楽部',
    'img': 'assets/img/nursing two.jpg'
  },
  {
    'title1': '介護有料老人ホームひまわり倶楽部の介護職/ヘ',
    'title2': 'ルパー求人 (パート/バイト)',
    'amount': '¥6,000',
    'title3': '5月 31日 (水) 08:00~17:00',
    'title4': '北海道札幌市東雲町3丁目916番地17号',
    'title5': ' 交通費300円',
    'title6': '住宅型有料老人ホームひまわり倶楽部',
    'img': 'assets/img/care worker 3.jpg'
  },
  {
    'title1': '介護有料老人ホームひまわり倶楽部の介護職/ヘ',
    'title2': 'ルパー求人 (パート/バイト)',
    'amount': '¥6,000',
    'title3': '5月 31日 (水) 08:00~17:00',
    'title4': '北海道札幌市東雲町3丁目916番地17号',
    'title5': ' 交通費300円',
    'title6': '住宅型有料老人ホームひまわり倶楽部',
    'img': 'assets/img/Careworker One.jpg'
  },
  {
    'title1': '介護有料老人ホームひまわり倶楽部の介護職/ヘ',
    'title2': 'ルパー求人 (パート/バイト)',
    'amount': '¥6,000',
    'title3': '5月 31日 (水) 08:00~17:00',
    'title4': '北海道札幌市東雲町3丁目916番地17号',
    'title5': ' 交通費300円',
    'title6': '住宅型有料老人ホームひまわり倶楽部',
    'img': 'assets/img/Careworker One.jpg'
  },
  {
    'title1': '介護有料老人ホームひまわり倶楽部の介護職/ヘ',
    'title2': 'ルパー求人 (パート/バイト)',
    'amount': '¥6,000',
    'title3': '5月 31日 (水) 08:00~17:00',
    'title4': '北海道札幌市東雲町3丁目916番地17号',
    'title5': ' 交通費300円',
    'title6': '住宅型有料老人ホームひまわり倶楽部',
    'img': 'assets/img/Careworker One.jpg'
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
