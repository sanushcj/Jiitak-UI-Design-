import 'package:flutter/material.dart';

import '../../Color/colors.dart';

class TickContainer extends StatelessWidget {
  const TickContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width / 1.3,
        height: MediaQuery.sizeOf(context).height / 4,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 0.1), //(x,y)
            blurRadius: 6.0,
          ),
        ], color: Pallete.whiteColor, borderRadius: BorderRadius.circular(10)),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
          ),
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return const Icon(
              Icons.verified,
              size: 40,
              color: Pallete.orange,
            );
          },
        ),
      ),
    );
  }
}
