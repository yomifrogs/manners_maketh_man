import 'package:flutter/material.dart';
import 'package:get/get.dart';

BackButton createBackButton() => BackButton(
      onPressed: () {
        Get.back();
      },
    );
