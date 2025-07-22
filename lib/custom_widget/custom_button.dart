import 'package:flutter/material.dart';
import 'package:youtube/color/app_color.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final FontWeight bold;

  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.backgroundColor =  AppColor.primarycolor,
    this.textColor = Colors.white,
    this.borderRadius = 12.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 12), required this.bold,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: padding,
      ),
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 16, fontWeight: bold),
      ),
      
    );
  }
}
