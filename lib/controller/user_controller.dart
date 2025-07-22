import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:youtube/modals/UserModel.dart';

class UserController extends GetxController {
  var user = Rxn<UserModel>();
  var isLoading = false.obs;

  Future<void> fetchUserData() async {
    isLoading.value = true;

    final url = Uri.parse("https://maazz.free.beeceptor.com/auth/getdata");


    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        user.value = UserModel.fromJson(data);
      } else {
        Get.snackbar("Error", "Failed to fetch user data", colorText: Colors.white ,backgroundColor: const Color.fromARGB(255, 238, 43, 43));
              
      }
    } catch (e) {
      Get.snackbar( "Exception", e.toString(), colorText: Colors.white);
      print(e);
    } finally {
      isLoading.value = false;
    }
  }
}
