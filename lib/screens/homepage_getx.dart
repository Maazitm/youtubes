// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:youtube/controller/count_controller.dart';

// class Homepage extends StatelessWidget {
//   final controller = Get.put(CountController());
//   Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Getx application screen")),

//       body: Obx( (){
//        return Center(
//          child: Column(
//             children: [
//               Text("${controller.number.value}"),
         
//               ElevatedButton(
//                 onPressed: () {
//                   controller.count();
             
//                 },
//                 child: Text("add"),
//               ),
//             ],
//           ),
//        );
//       } 
//       )
  
//     );
//   }
// }
















// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:youtube/controller/count_controller.dart';

// class Homepage extends StatelessWidget {
//   final controller = Get.put(CountController());

//   Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Getx Application Screen")),
//       body: Obx(() {
//         return SingleChildScrollView(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("RxInt: ${controller.number.value}"),
//               Text("RxDouble: ${controller.price.value}"),
//               Text("RxString: ${controller.name.value}"),
//               Text("RxBool: ${controller.isActive.value}"),
//               const SizedBox(height: 10),

//               Text("RxList: ${controller.fruits.join(', ')}"),
//               Text("RxMap: ${controller.user}"),
//               Text("RxSet: ${controller.ids.toList()}"),
//               const SizedBox(height: 10),

//               Text("RxnString (nullable): ${controller.email.value ?? 'null'}"),
//               Text("RxnInt (nullable): ${controller.age.value ?? 'null'}"),
//               const SizedBox(height: 10),


//               const SizedBox(height: 20),

//               ElevatedButton(
//                 onPressed: () => controller.count(),
//                 child: const Text("Increment RxInt"),
//               ),
//               ElevatedButton(
//                 onPressed: () => controller.updateValues(),
//                 child: const Text("Update All Other Values"),
//               ),
//             ],
//           ),
//         );
//       }),
//     );
//   }
// }
