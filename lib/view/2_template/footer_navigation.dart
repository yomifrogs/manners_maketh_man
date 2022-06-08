import 'package:flutter/material.dart';
import 'package:manners_maketh_man/view/1_page/home_page.dart';

createLoggedInBottomNavigation(
        {required BuildContext context, int? selectIndex}) =>
    BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.light),
          label: 'Sample',
        ),
      ],
      currentIndex: selectIndex ?? -1,
      onTap: (index) {
        onPressedLoggedInBottomNavigationTapped(context, index);
      },
      type: BottomNavigationBarType.fixed,
    );
const homePageIndex = 0;
const sampleIndex = 1;

onPressedLoggedInBottomNavigationTapped(BuildContext context, int selectIndex) {
  switch (selectIndex) {
    case homePageIndex:
      MyHomePage.transition(context);
      break;
    case sampleIndex:
      MyHomePage.transition(context);
      break;
    default:
      break;
  }
}
