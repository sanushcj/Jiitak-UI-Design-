import 'dart:io';

import 'package:flutter/material.dart';
import '../widgets/Page_Three/common_textfield.dart';
import '../widgets/Page_Three/img_and_title.dart';
import '../widgets/Page_Three/third_appbar.dart';
import 'package:file_picker/file_picker.dart';

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
            )
          ],
        ),
      ),
    );
  }
}
