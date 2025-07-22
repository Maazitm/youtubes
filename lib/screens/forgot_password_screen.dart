import 'package:flutter/material.dart';
import 'package:youtube/color/app_color.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future<void> _method() async {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(
      const SnackBar(content: Text("rest like send ✅✅✅")),
    );
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Forgot Password',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock_outline, color: AppColor.primarycolor, size: 64),
            const SizedBox(height: 24),
            const Text(
              'Reset your password',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Enter your email address and we\'ll send you a link to reset your password.',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontFamily: 'Roboto',
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            TextFormField(
              controller: _emailController,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white10,
                hintText: 'Email',
                hintStyle: const TextStyle(color: Colors.white54),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.email, color: Colors.white54),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primarycolor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: _method,
                child: const Text(
                  'Send Reset Link',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                'Back to Login',
                style: TextStyle(
                  color: AppColor.primarycolor,
                  fontSize: 16,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
