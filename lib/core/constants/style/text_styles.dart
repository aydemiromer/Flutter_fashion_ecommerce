import 'package:fashion_ecommerce_app/core/constants/color/color.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle headline(BuildContext context) => const TextStyle(
      fontSize: 34, fontWeight: FontWeight.bold, color: AppColor.black);
  static TextStyle headline2(BuildContext context) => const TextStyle(
      fontSize: 24, fontWeight: FontWeight.bold, color: AppColor.black);
  static TextStyle headline3(BuildContext context) => const TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: AppColor.black);
  static TextStyle elevenpx(BuildContext context) => const TextStyle(
      fontSize: 11, fontWeight: FontWeight.normal, color: AppColor.black);
  static TextStyle fourteenpx(BuildContext context) => const TextStyle(
      fontSize: 14, fontWeight: FontWeight.normal, color: AppColor.black);
  static TextStyle sixteenpx(BuildContext context) => const TextStyle(
      fontSize: 16, fontWeight: FontWeight.normal, color: AppColor.black);
  static TextStyle description(BuildContext context) => const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: AppColor.black);
}
