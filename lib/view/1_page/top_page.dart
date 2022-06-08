import 'package:flutter/material.dart';
import 'package:manners_maketh_man/view/1_page/home_page.dart';
import 'package:manners_maketh_man/view/2_template/footer_navigation.dart';
import 'package:manners_maketh_man/view/3_component/text_button.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  final String title = "Top";

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            createActionButton(
                onPressed: () {
                  MyHomePage.transition(context, "from Top Page");
                },
                txt: "go")
          ],
        ),
      ),
    );
  }
}
