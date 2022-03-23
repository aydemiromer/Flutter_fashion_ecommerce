import 'package:fashion_ecommerce_app/core/constants/color/color.dart';
import 'package:flutter/material.dart';

textFiledSearchWidget(
  BuildContext context, {
  String? title,
  Color? color,
  controller,
  double? radius,
}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      prefixIcon: const Icon(Icons.search),
      hintText: title,
      filled: false,
      fillColor: AppColor.black,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(radius!)),
    ),
  );
}
