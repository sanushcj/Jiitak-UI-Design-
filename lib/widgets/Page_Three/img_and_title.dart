import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jiitak_ui_test/constants/constants.dart';
import '../../Color/colors.dart';

class TitleAndImg extends StatelessWidget {
  const TitleAndImg({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
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
            child: Row(
              children: [
                Text(text1),
                const Text(
                  '*',
                  style: TextStyle(color: Pallete.redColor),
                ),
                Text(
                  '   $text2',
                  style: const TextStyle(color: Pallete.greyColor),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              ImgPickWidget(),
              ImgPickWidget(),
              ImgPickWidget(),
            ],
          ),
        ]),
      ),
    );
  }
}

class ImgPickWidget extends StatelessWidget {
  const ImgPickWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => productpickImages(),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(10),
              dashPattern: const [10, 4],
              strokeCap: StrokeCap.round,
              child: Container(
                  width: MediaQuery.sizeOf(context).width / 4.5,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.image,
                          size: 40,
                        ),
                        rrHeight10,
                        Text(
                          '写真を追加',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade400,
                          ),
                        )
                      ])))),
    );
  }
}

List<File> product_images = [];

//
void selectImages() async {
  var result = await productpickImages();
  product_images = result;
}

Future<List<File>> productpickImages() async {
  List<File> images = [];
  try {
    var pickedFiles = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: true,
    );
    if (pickedFiles != null && pickedFiles.files.isNotEmpty) {
      for (int i = 0; i < pickedFiles.files.length; i++) {
        images.add(File(pickedFiles.files[i].path!));
      }
    }
  } catch (e) {
    debugPrint(e.toString());
  }
  return images;
}
