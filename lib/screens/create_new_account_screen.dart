import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:youtube/color/app_color.dart';
import 'package:youtube/routes/app_routes.dart';
import 'package:youtube/screens/login_screen.dart';

class CreateNewAccountScreen extends StatefulWidget {
  const CreateNewAccountScreen({super.key});

  @override
  State<CreateNewAccountScreen> createState() => _CreateNewAccountScreenState();
}

class _CreateNewAccountScreenState extends State<CreateNewAccountScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String _username = '';

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Handle account creation logic here
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Account created!')));
    }
  }

  void _goBackToLogin() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: _goBackToLogin,
        ),
        title: const Text(
          'Create Account',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(height: 32),
              // YouTube Logo
              Center(
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 80,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Red play button background
                        Container(
                          width: 70,
                          height: 50,
                          decoration: BoxDecoration(
                            color: AppColor.primarycolor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        // White play icon
                        Icon(Icons.play_arrow, color: Colors.white, size: 40),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Center(
                child: Text(
                  'Sign up for YouTube',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                onSaved: (value) => _username = value ?? '',
                validator:
                    (value) =>
                        value == null || value.isEmpty
                            ? 'Enter username'
                            : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) => _email = value ?? '',
                validator:
                    (value) =>
                        value == null || value.isEmpty ? 'Enter email' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
                onSaved: (value) => _password = value ?? '',
                validator:
                    (value) =>
                        value == null || value.length < 6
                            ? 'Password too short'
                            : null,
              ),
              const SizedBox(height: 32),
              Container(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primarycolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: _submit,
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              TextButton(
                onPressed: () {
                  //Navigator.pushNamed(context, AppRoutes.login);
                  Get.toNamed(AppRoutes.login);
                },
                child: Text(
                  "back to login",
                  style: TextStyle(color: AppColor.primarycolor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
