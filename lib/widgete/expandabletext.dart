// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ini/utilities/colors.dart';
import 'package:ini/widgete/smalltext.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;
  bool hidenText = true;
  double textHeight = 100;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              height: 2,
              text: firstHalf,
              size: 40,
            )
          : Column(
              children: [
                SmallText(
                  text: hidenText
                      ? (firstHalf + '...')
                      : (firstHalf + secondHalf),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hidenText = !hidenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(text: 'show more'),
                      Icon(
                        hidenText ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                        color: AppColors.maincolor,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
