// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color? color;
  double size;
  TextOverflow overflow;
  final String text;
  BigText(
      {super.key,
      this.overflow = TextOverflow.ellipsis,
      this.size = 20,
      this.color = const Color(0xFF89dad0),
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400),
    );
  }
}
