import 'package:flutter/material.dart';
import 'package:manners_maketh_man/view/1_page/home_page.dart';
import 'package:manners_maketh_man/view/1_page/top_page.dart';

class MainRoot extends StatelessWidget {
  const MainRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return createMaterialApp(context, const TopPage());
  }
}

createMaterialApp(BuildContext context, Widget homeWidget) => MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homeWidget,
    );
