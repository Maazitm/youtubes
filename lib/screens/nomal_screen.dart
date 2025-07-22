import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube/color/app_color.dart';
import 'package:youtube/controller/count_controller.dart';


class CountScreen extends StatelessWidget {
  final controller = Get.put(CountController());

  CountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GetX Rx Example")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitle("Basic Rx Types"),
              Text("Number: ${controller.number}"),
              Text("Price: ₹${controller.price}"),
              Text("Name: ${controller.name}"),
              Text("Active: ${controller.isActive}"),

              const SizedBox(height: 20),
              _buildTitle("Rx Collections"),
              Text("Fruits: ${controller.fruits.join(', ')}"),
              Text("User: ${controller.user['name']} | ${controller.user['contact']}"),
              Text("IDs: ${controller.ids.join(', ')}"),

              const SizedBox(height: 20),
              _buildTitle("Nullable Rx Types"),
              Text("Email: ${controller.email.value ?? '--'}"),
              Text("Age: ${controller.age.value?.toString() ?? '--'}"),

              const SizedBox(height: 30),
              _buildTitle("Actions"),
              ElevatedButton(
                onPressed: controller.count,
                child: const Text("Increment Number"),
              ),
              ElevatedButton(
                onPressed: controller.updateValues,
                child: const Text("Update All Values"),
              ),
            ],
          );
        }),
      ),
    );
  }

  Widget _buildTitle(String title) => Padding(
        padding: const EdgeInsets.only(bottom: 8, top: 16),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColor.primarycolor,
          ),
        ),
      );
}
