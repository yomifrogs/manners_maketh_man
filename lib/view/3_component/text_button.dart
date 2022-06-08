import 'package:flutter/material.dart';

ElevatedButton createActionButton(
    {void Function()? onPressed, required String txt}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
        primary: const Color.fromARGB(255, 104, 104, 105),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        )),
    child: Text(txt),
  );
}
