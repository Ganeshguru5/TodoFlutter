import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {

  final dynamic bgColor;
  final IconData iconData;

  CategoryIcon({this.bgColor, required this.iconData });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        iconData,
        size: 30,
        color: Colors.black,
      ),
    );
  }
}