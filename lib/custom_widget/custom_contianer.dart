import 'package:flutter/material.dart';
import 'package:youtube/color/app_color.dart';

class CustomContianer extends StatelessWidget {
  
  double height;
  double width;
  final Color Colorss;
  final String imageurl;
  final double apnaradius;
  CustomContianer({
    super.key,
    this.height = 0,
    required this.width,
    this.Colorss = AppColor.primarycolor,
    required this.imageurl,
    this.apnaradius = 12, required MaterialColor color,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Container(
      height:   height == null ? screenHeight * 0.5 : height,

      width: width,
      decoration: BoxDecoration(
        color: Colorss,
        borderRadius: BorderRadius.circular(apnaradius),
        image: DecorationImage(image: NetworkImage(imageurl), fit: BoxFit.fill),
      ),
    );
  }
}
