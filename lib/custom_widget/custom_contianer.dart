import 'package:flutter/material.dart';
import 'package:youtube/color/app_color.dart';

class CustomContianer extends StatelessWidget {
  final double height;
  final double width;
  final Color Colorss;
  final String imageurl;
  final double apnaradius;
  const CustomContianer({
    super.key,
    required this.height,
    required this.width,
    this.Colorss = AppColor.primarycolor,
    required this.imageurl,
    this.apnaradius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,

      width: width,
      decoration: BoxDecoration(
        color: Colorss,
        borderRadius: BorderRadius.circular(apnaradius),
        image: DecorationImage(image: NetworkImage(imageurl), fit: BoxFit.fill),
      ),
    );
  }
}
