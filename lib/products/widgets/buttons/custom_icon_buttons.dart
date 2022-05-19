import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
 
  final VoidCallback onPressed;
  final Color iconcolor;
  final Color bgcolor;
  final IconData icon;

  const CustomIconButton(
      {Key? key,
     
      required this.onPressed,
      required this.iconcolor,
      required this.bgcolor,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Icon(
        icon,
        size: 15,
        color: iconcolor,
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const CircleBorder()), 
        backgroundColor: MaterialStateProperty.all(bgcolor)
      ),
    );
  }
}
