import 'package:flutter/material.dart';
import 'package:manners_maketh_man/src/3_infra/flutter/setup_flutter.dart';
import 'package:manners_maketh_man/view/setup_view.dart';

void main() {
  setupFlutter(isMocking: false);
  runApp(const MainRoot());
}
