// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ini/utilities/colors.dart';
import 'package:ini/widgete/appicon.dart';
import 'package:ini/widgete/bigtext.dart';
import 'package:ini/widgete/expandabletext.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_bag_sharp)
              ],
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20))),
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    width: double.maxFinite,
                    child: Center(
                        child: BigText(
                      text: 'chinese side',
                      color: Colors.black,
                    )))),
            pinned: true,
            backgroundColor: AppColors.titleColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/imgs/duilding.jpeg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: ExpandableText(text: 'text' * 1000)),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, right: 50, left: 50, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconcolor: Colors.white,
                    iconsize: 24,
                    backgroundcolor: AppColors.maincolor,
                    icon: Icons.remove),
                BigText(
                  text: "\$12.88  X   0",
                  color: AppColors.mainBlackColor,
                  size: 20,
                ),
                AppIcon(
                  icon: Icons.add,
                  iconsize: 24,
                  backgroundcolor: AppColors.maincolor,
                  iconcolor: Colors.white,
                )
              ],
            ),
          ),
          Container(
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
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.maincolor,
                      size: 24,
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.maincolor),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
