import 'package:flutter/material.dart';

import '../../Color/colors.dart';
import '../../constants/constants.dart';
import 'first_two_text_widget.dart';
import 'tick_container.dart';

class CurvedStack extends StatelessWidget {
  const CurvedStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height / 2.22,
      child: Stack(
        // textDirection: ,
        alignment: Alignment.topCenter,
        children: [
          const FirstTwoTextWidget(),
          Positioned(
            // top: 0,
            top: 70,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height / 3,
              decoration: const BoxDecoration(
                  color: Pallete.whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  rrHeight20,
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height / 4,
                    child: ListView.separated(

                        // dragStartBehavior: DragStartBehavior.start,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 2,
                        separatorBuilder: (context, index) => rrwidth10,
                        itemBuilder: (context, index) => const TickContainer()),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('2/2枚目'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
