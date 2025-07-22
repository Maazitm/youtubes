import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:youtube/controller/shorts_controller.dart';

class Shorts extends StatelessWidget {
  final ShortsController thiscontroller = Get.put(ShortsController());
  Shorts({super.key});

  @override
  Widget build(BuildContext context) {
    print("😥😥😥😥😥😥😥😥😥");
    return Obx(() {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          leading: Image.network(
            "https://img.pikbest.com/origin/09/21/29/70epIkbEsTFJf.png!sw800",
            height: 80,
          ),
          title: Text(
            "Shorts",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          backgroundColor: Colors.black,
          actions: [
            Row(
              children: [
                Icon(Icons.search, size: 30, color: Colors.white),
                SizedBox(width: 10),
                Icon(Icons.more_vert, size: 30, color: Colors.white),
              ],
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 1000,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExaGVvMXN1N3ppMnJvcmllbHN1aDV6c2NvdzcybWthbjlhbTN1ZXhvZiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/D0h583flkaxvVYc6Bh/giphy.gif",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 580),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,

                            width: 50,
                            decoration: BoxDecoration(
                              // shape: BoxShape.circle,
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/66b327ac7fb97c001d18e3a7.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            thiscontroller.cahnnel_name.value,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Colors.white,
                              ),
                            ),

                            onPressed: () {
                              Get.snackbar("Subscribed", "${thiscontroller.cahnnel_name}", backgroundColor: Colors.blue   ,duration: Duration(seconds: 10));
                              thiscontroller.changeValue();
                            },
                            child: Text(
                              thiscontroller.mytext.value,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              thiscontroller.discription.value,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Image.network(
                              "https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/66b327ac7fb97c001d18e3a7.jpg",
                              height: 50,
                              width: 50,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
