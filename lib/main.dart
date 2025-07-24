import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube/screens/create_new_account_screen.dart';
import 'package:youtube/screens/forgot_password_screen.dart';
import 'package:youtube/screens/library.dart';
import 'package:youtube/screens/login_screen.dart';
import 'package:youtube/screens/notifications.dart';
import 'package:youtube/screens/shorts.dart';
import 'package:youtube/screens/subscription.dart';
import 'package:youtube/screens/tabs.dart';
import 'package:youtube/screens/youtube.dart';
import 'package:youtube/screens/youtube_play_video.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure bindings initialized

  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token'); // Get saved token

  runApp(MyApp(token: token)); // Pass token to app
}

class MyApp extends StatelessWidget {
  final String? token;
  const MyApp({super.key, required this.token});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: token == null ? '/loginscreen' : '/tabs',
      routes: {
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
    );
  }
}
// Future<void> logout() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   await prefs.clear(); // or prefs.remove('isLoggedIn');
//   Get.offAllNamed(AppRoutes.login); // Redirect to login screen
// }
