import 'package:flutter/material.dart';

class customtext extends StatelessWidget {
  final String text;
  final Color apnacolor;
  const customtext(String s, {super.key, required this.text, required this.apnacolor});

  @override
  Widget build(BuildContext context) {
    return Text(text ,style: TextStyle(color:apnacolor),);
  }
}