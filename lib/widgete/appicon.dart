// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundcolor;
  final Color iconcolor;
  final double size;
  final double iconsize;
  AppIcon({
    super.key,
    required this.icon,
    this.backgroundcolor = const Color(0xFFfcf4e4),
    this.iconcolor = const Color(0xFF756d54),
    this.size = 40,
    this.iconsize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2),
          color: backgroundcolor),
      child: Icon(
        icon,
        color: iconcolor,
        size: iconsize,
      ),
    );
  }
}
