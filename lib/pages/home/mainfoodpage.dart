// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ini/pages/home/foodpagebody.dart';
import 'package:ini/utilities/colors.dart';
import 'package:ini/widgete/bigtext.dart';
import 'package:ini/widgete/smalltext.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 45),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: 'Bangladesh'),
                      Row(
                        children: [
                          SmallText(
                            text: 'Naesing',
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: AppColors.maincolor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(child: FoodPageBody()))
        ],
      ),
    );
  }
}
