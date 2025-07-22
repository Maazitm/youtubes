import 'package:flutter/material.dart';
import 'package:youtube/color/app_color.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading: IconButton(onPressed: () {
        Navigator.pop(context);
       } , icon:  Icon(Icons.arrow_back_ios_new ,color:AppColor.primarycolor,)),


        title: Text("Notifications screen"),
      ),
    );
  }
}
