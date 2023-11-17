import 'dart:io';

import 'package:flutter/material.dart';
import 'package:jiitak_ui_test/constants/constants.dart';
import 'package:jiitak_ui_test/widgets/Page_Three/dropdownpage.dart';
import '../Color/colors.dart';
import '../widgets/Page_Three/common_textfield.dart';
import '../widgets/Page_Three/img_and_title.dart';
import '../widgets/Page_Three/second_drop_down.dart';
import '../widgets/Page_Three/third_appbar.dart';
import 'package:file_picker/file_picker.dart';

import '../widgets/Page_Three/tickmark.dart';

class UIPageThree extends StatelessWidget {
  const UIPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: thirdAppBar(),
      body: Container(
        //maincontainer
        padding: const EdgeInsets.all(20),
        alignment: Alignment.centerLeft,
        height: MediaQuery.sizeOf(context).height,
        width: double.infinity,
        child: ListView(
          children: [
            const CommonTextfield(text1: '店舖名', text2: 'Mer キッチン'),
            const CommonTextfield(text1: '代表担当者名', text2: '林田 絵梨花'),
            const CommonTextfield(text1: '店舖電話番号', text2: '123 -4567 8910'),
            const CommonTextfield(text1: '店舗住所 ', text2: '大分県豊後高田市払田791-13'),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: MediaQuery.sizeOf(context).height / 4,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/img/googlemap.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            const TitleAndImg(
              text1: '店舗外観',
              text2: '(最大3枚まで)',
            ),
            const TitleAndImg(
              text1: '店舗内観 ',
              text2: '(1枚~3枚ずつ追加してください)',
            ),
            const TitleAndImg(
              text1: '料理写真',
              text2: '(1枚~3枚ずつ追加してください)',
            ),
            const TitleAndImg(
              text1: 'メニュー写真',
              text2: '(1枚~3枚ずつ追加してください)',
            ),
            MyDropdown(text1: '營業時間'),
            MyDropdown(text1: '今天時間'),
            //tickmarkContainer Starting point
            TickMark(
              text1: '定休日',
            ),
            const SecondDD(),
            const CommonTextfield(text1: '美味乚ˋ!刂一', text2: '大十儿女才ㄙ元之手!'),
            CommonTextfield(text1: '座席数', text2: '40席'),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      return Pallete.orange
                          .withOpacity(.6); // Replace with your desired color
                    },
                  ),
                ),
                child: const Text('描集保存'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
