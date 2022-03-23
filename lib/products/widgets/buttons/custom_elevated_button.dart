import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  Widget? child;
  final Color color;
  final double height;
  final double width;
  final double borderRadius;
  final VoidCallback onPressed;

  CustomElevatedButton(
      {Key? key,
      required this.color,
      this.height = 50.0,
      required this.width,
      this.borderRadius = 2.0,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            )),
          ),
          onPressed: onPressed,
          child: child),
    );
  }
}
