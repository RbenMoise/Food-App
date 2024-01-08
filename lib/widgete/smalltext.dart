// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  double size;
  double height;
  final String text;
  SmallText({
    super.key,
    this.height = 1.5,
    this.size = 12,
    this.color = const Color(0xFFccc7c5),
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          height: height,
          color: color,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400),
    );
  }
}
