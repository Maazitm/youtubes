import 'dart:convert'; // For encoding and decoding JSON data
import 'package:flutter/material.dart'; // Flutter UI toolkit
import 'package:get/get.dart'; // GetX package for state management and navigation
import 'package:http/http.dart' as http; // For making HTTP requests
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube/api/app_api.dart'; // Your base URL/API constants
import 'package:youtube/modals/login_modal.dart'; // Login model to parse the response
import '../routes/app_routes.dart'; // App route paths

class LoginController extends GetxController {
  var isLoading = false.obs; // Reactive variable to track loading state

  final emailCtrl = TextEditingController(); // Controller to manage email input
  final passwordCtrl =
      TextEditingController(); // Controller to manage password input

  // Method to handle user login
  Future<void> loginUser() async {
    isLoading.value =
        true; // Set loading state to true to show progress indicator

    try {
      // Make a POST request to the login API
      final response = await http.post(
        Uri.parse(BaseUrl.loginUrl), // Convert URL string to URI
        headers: {
          'Content-Type': 'application/json', // ✅ Add this
        },
        body: jsonEncode({
          "email": emailCtrl.text.trim(), // Send email as JSON
          "password": passwordCtrl.text.trim(), // Send password as JSON
        }),
      );

      // If login is successful (status code 200)
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body); // Decode JSON response
        final loginData = LoginResponse.fromJson(
          data,
        ); // Convert to LoginResponse model

        // You can store token or user info here using SharedPreferences or GetStorage if needed

        Get.snackbar(
          "Success",
          "Login successful",
          backgroundColor: Colors.green,
        ); // Show success message
        // Navigator.pushNamed(context, AppRoutes.tabs);

      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', loginData.token ?? "");
 

        Get.offNamed(AppRoutes.tabs); // Navigate to home screen (tabs page)
      } else {
        // If login failed, show error message
        final error = jsonDecode(response.body); // Decode error response
        Get.snackbar(
          "Login Failed",
          error['message'] ?? 'Unknown error',
        ); // Show failure message
      }
    } catch (e) {
      // Catch any other exceptions (e.g., network issues)
      Get.snackbar("Error", e.toString()); // Show exception message
    } finally {
      isLoading.value = false; // Stop loading indicator
    }
  }
}
