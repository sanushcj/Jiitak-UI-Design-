import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jiitak_ui_test/Color/colors.dart';
import 'package:jiitak_ui_test/Pages/uione.dart';

class ScreenNavigation extends StatelessWidget {
  ScreenNavigation({Key? key}) : super(key: key);
  static ValueNotifier<int> selectedPageIndex = ValueNotifier(0);
  final _pages = [
    const HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.yellow,
        onPressed: () {
          // Navigator.of(context).pushReplacement(
          //     MaterialPageRoute(builder: (context) => const AddItems()));
        },
        child: const Icon(
          CupertinoIcons.camera_viewfinder,
          size: 40,
        ),
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: ScreenNavigation.selectedPageIndex,
        builder: (BuildContext context, int updatedIndex, Widget? _) {
          return BottomNavigationBar(
              unselectedIconTheme: const IconThemeData(
                color: Pallete.black,
              ),
              selectedIconTheme: const IconThemeData(
                color: Pallete.yellow,
              ),
              selectedLabelStyle: const TextStyle(
                  color: Pallete.yellow, fontWeight: FontWeight.bold),
              unselectedLabelStyle: const TextStyle(
                  color: Pallete.black, fontWeight: FontWeight.bold),
              selectedItemColor: Pallete.yellow,
              backgroundColor: Pallete.whiteColor,
              selectedFontSize: 9,
              unselectedFontSize: 9,
              currentIndex: updatedIndex,
              onTap: ((newIndex) {
                ScreenNavigation.selectedPageIndex.value = newIndex;
              }),
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.search), label: 'さがす'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.bag), label: '古仕事'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.chat_bubble), label: 'チャット'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.person), label: 'マイページ'),
              ]);
        },
      ),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedPageIndex,
          builder: (BuildContext context, int updatedIndex, Widget? _) {
            return _pages[updatedIndex];
          },
        ),
      ),
    );
  }
}
