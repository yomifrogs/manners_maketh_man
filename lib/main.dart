import 'package:flutter/material.dart';
import 'package:manners_maketh_man/src/2_infra/flutter/setup_flutter.dart';
import 'package:manners_maketh_man/view/1_root/root_main.dart';

void main() {
  setupFlutter(isMocking: false);
  runApp(const MyApp());
}
