import 'package:flutter/material.dart';

import '../../../core/constants/color/color.dart';

textFieldCustomWidget(
  BuildContext context, {
  required String title,
  required double height,
  required double width,
  Color? color,
  controller,
}) {
  return Material(
    elevation: 20,
    child: SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            labelText: title,
            filled: true,
            fillColor: AppColor.bg,
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.bg)),
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
              color: AppColor.bg,
            ))),
      ),
    ),
  );
}
