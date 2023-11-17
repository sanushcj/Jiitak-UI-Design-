import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';
import '../constants/constants.dart';
import '../widgets/Page_Two/appbar_two.dart';
import '../widgets/Page_Two/curved_stack.dart';
import '../widgets/Page_Two/scrren_two_tile.dart';

class UIPageTwo extends StatelessWidget {
  const UIPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: uiTwoAppBAR(),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        // color: Pallete.roseColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CurvedStack(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'スタンプ獲得履歴',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (context, index) =>
                                ScreenTwoTile(newIndex: index),
                            separatorBuilder: (context, index) =>
                                const Divider(),
                            itemCount: 6),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
