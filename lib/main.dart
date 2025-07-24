import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:youtube/screens/create_new_account_screen.dart';
import 'package:youtube/screens/forgot_password_screen.dart';
import 'package:youtube/screens/homepage_getx.dart';
import 'package:youtube/screens/library.dart';
import 'package:youtube/screens/login_screen.dart';
import 'package:youtube/screens/nomal_screen.dart';
import 'package:youtube/screens/notifications.dart';
import 'package:youtube/screens/shorts.dart';
import 'package:youtube/screens/subscription.dart';
import 'package:youtube/screens/tabs.dart';
import 'package:youtube/screens/youtube.dart';
import 'package:youtube/screens/youtube_play_video.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Tabs(),
        '/loginscreen': (context) => LoginScreen(),
        '/shorts': (context) => Shorts(),
        '/tabs': (context) => Tabs(),
        '/forgotPassword': (context) => ForgotPasswordScreen(),
        '/library_screen': (context) => Library(),
        '/Notification_screen': (context) => Notifications(),
        '/Subscription': (context) => Subscription(),
        '/creat_new_account': (context) => CreateNewAccountScreen(),
        '/youtube_screen': (context) => Youtube(),
        '/YoutubePlayVideo': (context) => YoutubePlayVideo(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
