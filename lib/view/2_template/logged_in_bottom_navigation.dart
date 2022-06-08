import 'package:flutter/material.dart';
import 'package:manners_maketh_man/view/1_page/home_page.dart';

createLoggedInBottomNavigation({required int selectIndex}) =>
    BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: '一覧',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.check),
          label: 'test',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.design_services),
          label: 'design',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: 'form',
        ),
      ],
      currentIndex: selectIndex,
      onTap: (index) {
        onPressedLoggedInBottomNavigationTapped(index);
      },
      type: BottomNavigationBarType.fixed,
    );

const listPageIndex = 0;
const testPageIndex = 1;
const designPageIndex = 2;
const customFormPageIndex = 3;

onPressedLoggedInBottomNavigationTapped(int selectIndex) {
  switch (selectIndex) {
    case listPageIndex:
      transitionHomePage();
      break;
    case testPageIndex:
      transitionHomePage();
      break;
    case designPageIndex:
      transitionHomePage();
      break;
    case customFormPageIndex:
      transitionHomePage();
      break;
    default:
      break;
  }
}
