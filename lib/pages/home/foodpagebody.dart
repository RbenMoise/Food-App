// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, must_call_super, unnecessary_new

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:ini/utilities/colors.dart';
import 'package:ini/widgete/appcolum.dart';
import 'package:ini/widgete/bigtext.dart';
import 'package:ini/widgete/iconandtextwidget.dart';
import 'package:ini/widgete/smalltext.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var currentpagevaleu = 0.8;
  double height = 220;
  double scalefactor = 0.8;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentpagevaleu = pageController.page!;
        //print(currentpagevaleu);
      });
    });
  }

  // @override
  // Void dispose() {
  //   pageController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider section
        new DotsIndicator(
          dotsCount: 5,
          position: currentpagevaleu,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        Container(
          height: 320,
          //  color: Colors.red,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),

        //popular text
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: 'Popular'),
              SizedBox(
                width: 10,
              ),
              Container(
                //margin: const EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: '.',
                  color: Colors.black26,
                  size: 29,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 3),
                child: SmallText(text: 'FoodParing'),
              )
            ],
          ),
        )
        //list of food

        ,
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Row(
                  children: [
                    //imagesection

                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/imgs/music.jpeg'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: 'Nutritious Fruit meal in China'),
                              SizedBox(
                                height: 10,
                              ),
                              SmallText(text: 'With Chinese characteeristics'),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            })
        // get the sliders to work and the dots below at 2:03
        //new DotsIndicator(dotsCount: 5, position: currentpagevaleu, decorator: DotsDecorator(size:const Size.square(9),activeSize:const Size(18.0, 9.0),activeShape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))))
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == currentpagevaleu.floor()) {
      var currscale = 1 - (currentpagevaleu - index) * (1 - scalefactor);
      var currtrans = height * (1 - currscale) / 2;
      matrix = Matrix4.diagonal3Values(1, currscale, 1)
        ..setTranslationRaw(0, currtrans, 0);
    } else if (index == currentpagevaleu.floor() + 1) {
      var currscale =
          scalefactor + (currentpagevaleu - index + 1) * (1 - scalefactor);
      var currtrans = height * (1 - currscale) / 2;
      matrix = Matrix4.diagonal3Values(1, currscale, 1)
        ..setTranslationRaw(0, currtrans, 0);
    } else if (index == currentpagevaleu.floor() - 1) {
      var currscale = 1 - (currentpagevaleu - index) * (1 - scalefactor);
      matrix = Matrix4.diagonal3Values(1, currscale, 1);
      matrix = Matrix4.diagonal3Values(1, currscale, 1)
        ..setTranslationRaw(0, currscale, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: 220,
            //width: 220,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/imgs/cam.jpg'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 130,
              //width: 220,
              margin: EdgeInsets.only(left: 30, bottom: 20, right: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(5, 5),
                    ),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0))
                  ]),
              child: Container(
                  padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: AppColum(
                    text: 'Chinese Side.',
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
