import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );
      Get.snackbar('Login Success', 'Welcome!');
      Get.offAllNamed('/dashboard');
    } catch (e) {
      Get.snackbar('Login Failed', e.toString());
    }
  }

  Future<void> register(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );
      Get.snackbar('Registration Success', 'Account created!');
      Get.offAllNamed('/dashboard');
    } catch (e) {
      Get.snackbar('Registration Failed', e.toString());
    }
  }

  void logout() async {
    await _auth.signOut();
    Get.offAllNamed('/login');
  }
}
