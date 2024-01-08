// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:ini/utilities/colors.dart';
import 'package:ini/widgete/appcolum.dart';
import 'package:ini/widgete/appicon.dart';
import 'package:ini/widgete/bigtext.dart';
import 'package:ini/widgete/expandabletext.dart';
import 'package:ini/widgete/iconandtextwidget.dart';

class PopularFood extends StatelessWidget {
  const PopularFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/imgs/duilding.jpeg'),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 5,
            right: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios_new,
                  //iconcolor: Colors.black,
                ),
                AppIcon(icon: Icons.shopping_cart)
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 230,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColum(
                      text: 'chinese Side.',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    BigText(
                      text: 'Introduce',
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableText(text: 'text' * 120),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  BigText(text: '0'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.maincolor),
              child: BigText(
                text: "\$10 | Add to cart",
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
