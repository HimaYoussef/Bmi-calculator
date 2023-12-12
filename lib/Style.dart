import 'package:flutter/material.dart';
import 'package:flutter_application_1/appcolors.dart';

TextStyle getTitleStyle({Color color = Colors.black, double fontSize = 20}) {
  return TextStyle(
      color: color, fontWeight: FontWeight.w500, fontSize: fontSize);
}

TextStyle getBodyStyle() {
  return TextStyle(
      color: AppColors.black, fontWeight: FontWeight.w400, fontSize: 16);
}

TextStyle getSmallStyle() {
  return TextStyle(
      color: AppColors.black, fontWeight: FontWeight.w400, fontSize: 14);
}