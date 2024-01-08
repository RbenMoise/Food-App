// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ini/widgete/smalltext.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color iconcolor;

  const IconTextWidget(
      {super.key,
      required this.icon,
      required this.text,
      required this.iconcolor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconcolor,
        ),
        SizedBox(
          width: 10,
        ),
        SmallText(
          text: text,
        )
      ],
    );
  }
}
