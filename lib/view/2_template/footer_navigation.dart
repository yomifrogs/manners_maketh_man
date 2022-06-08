import 'package:flutter/material.dart';
import 'package:manners_maketh_man/view/1_page/home_page.dart';

createLoggedInBottomNavigation(
        {required BuildContext context, required int selectIndex}) =>
    BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
      ],
      currentIndex: selectIndex,
      onTap: (index) {
        onPressedLoggedInBottomNavigationTapped(context, index);
      },
      type: BottomNavigationBarType.fixed,
    );
const homePageIndex = 0;

onPressedLoggedInBottomNavigationTapped(BuildContext context, int selectIndex) {
  switch (selectIndex) {
    case homePageIndex:
      MyHomePage.transition(context);
      break;
    default:
      break;
  }
}
