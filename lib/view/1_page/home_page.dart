import 'package:flutter/material.dart';
import 'package:manners_maketh_man/src/1_usecase/template_usecase.dart';
import 'package:manners_maketh_man/src/2_domain/user.dart';
import 'package:manners_maketh_man/view/2_template/footer_navigation.dart';
import 'package:manners_maketh_man/view/3_component/back_button.dart';

class MyHomePage extends StatefulWidget {
  static void transition(BuildContext context, String title) {
    // 画面遷移
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(
            title: title,
          ),
        ));
  }

  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<User> users = [];
  int _counter = 0;

  Future<void> _getUserList() async {
    final user = await TemplateUsecase.getUser();
    users.add(user);
    setState(() {
      _counter = users.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: createBackButton(context),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${_counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getUserList,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: createLoggedInBottomNavigation(
          context: context, selectIndex: homePageIndex),
    );
  }
}
