import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final double height;
  final double width;
  final VoidCallback onPressed;
  final Color color;
  final Image icon;

  const CustomIconButton(
      {Key? key,
      required this.height,
      required this.width,
      required this.onPressed,
      required this.color,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
        color: color,
      ),
    );
  }
}
