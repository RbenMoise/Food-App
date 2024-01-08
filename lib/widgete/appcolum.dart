// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ini/utilities/colors.dart';
import 'package:ini/widgete/bigtext.dart';
import 'package:ini/widgete/iconandtextwidget.dart';
import 'package:ini/widgete/smalltext.dart';

class AppColum extends StatelessWidget {
  final String text;
  const AppColum({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          color: Colors.black,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: AppColors.maincolor,
                        size: 15,
                      )),
            ),
            SizedBox(
              width: 10,
            ),
            SmallText(text: '4.5'),
            SizedBox(
              width: 10,
            ),
            SmallText(text: '1287'),
            SizedBox(
              width: 10,
            ),
            SmallText(text: 'Comments')
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconTextWidget(
                icon: Icons.circle_sharp,
                text: 'Normal',
                iconcolor: AppColors.iconColor1),
            IconTextWidget(
                icon: Icons.location_on,
                text: '1.7Km',
                iconcolor: AppColors.maincolor),
            IconTextWidget(
                icon: Icons.timer_rounded,
                text: '32min',
                iconcolor: AppColors.iconColor2)
          ],
        )
      ],
    );
  }
}
