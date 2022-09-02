import 'package:flutter/material.dart';
import 'package:thedulbergs_v1/functions/functions.dart';

Widget letter(String character, bool hidden) {
  return Container(
    height: 65,
    width: 51,
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: AppColor.primaryColorDark,
      borderRadius: BorderRadius.circular(4),
    ),
    child: Visibility(
      visible: !hidden,
      child: Text(
        character,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 32,
        ),
      ),
    ),
  );
}
