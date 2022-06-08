import 'package:flutter/material.dart';

BackButton createBackButton(BuildContext context) => BackButton(
      onPressed: () {
        Navigator.pop(context);
      },
    );
