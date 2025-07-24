// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:youtube/color/app_color.dart';
// import 'package:youtube/controller/youtube_play_controller.dart';

// class YoutubePlayVideo extends StatelessWidget {
//   final YoutubePlayVideocontroller = Get.put(YoutubePlayController());
//    YoutubePlayVideo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Obx((){
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text("YouTube Video"),
//           backgroundColor: Colors.black,
//           foregroundColor: Colors.white,
//           elevation: 0,
//         ),
//         backgroundColor: Colors.black,
//         body: Column(
//           children: [
//             // Video Player Placeholder
//             AspectRatio(
//               aspectRatio: 16 / 9,
//               child: Container(
//                 color: Colors.black87,
//                 child: const Center(
//                   child: Icon(
//                     Icons.play_circle_fill,
//                     color: Colors.white,
//                     size: 80,
//                   ),
//                 ),
//               ),
//             ),
//             // Video Title & Info
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     "Sample YouTube Video Title",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Row(
//                     children: [
//                       const Text(
//                         "1,234,567 views • 1 day ago",
//                         style: TextStyle(color: Colors.white70, fontSize: 14),
//                       ),
//                       const Spacer(),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       IconButton(
//                         icon: Icon(
//                           YoutubePlayVideocontroller.ifliked == true
//                               ? Icons.thumb_up
//                               : Icons.thumb_up_alt_outlined,
//                           color:
//                               YoutubePlayVideocontroller.ifliked == true
//                                   ? Colors.white
//                                   : AppColor.primarycolor,
//                         ),
//                         onPressed: () {

//                           YoutubePlayVideocontroller.like();
//                         },
//                       ),
//                       const Text("12K", style: TextStyle(color: Colors.white)),
//                       IconButton(
//                         icon: const Icon(
//                           Icons.thumb_down_alt_outlined,
//                           color: Colors.white,
//                         ),
//                         onPressed: () {},
//                       ),
//                       const Text(
//                         "Dislike",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       IconButton(
//                         icon: const Icon(Icons.share, color: Colors.white),
//                         onPressed: () {},
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             const Divider(color: Colors.white24),
//             // Channel Info
//             ListTile(
//               leading: const CircleAvatar(
//                 backgroundColor: AppColor.primarycolor,
//                 child: Icon(Icons.person, color: Colors.white),
//               ),
//               title: const Text(
//                 "Channel Name",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               subtitle: const Text(
//                 "1M subscribers",
//                 style: TextStyle(color: Colors.white70),
//               ),
//               trailing: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: AppColor.primarycolor,
//                   foregroundColor: Colors.white,
//                 ),
//                 onPressed: () {},
//                 child: const Text("SUBSCRIBE"),
//               ),
//             ),
//             const Divider(color: Colors.white24),
//             // Comments Placeholder
//             Expanded(
//               child: ListView(
//                 padding: const EdgeInsets.all(12),
//                 children: const [
//                   Text(
//                     "Comments",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     "User1: Great video!",
//                     style: TextStyle(color: Colors.white70),
//                   ),
//                   SizedBox(height: 4),
//                   Text(
//                     "User2: Thanks for sharing.",
//                     style: TextStyle(color: Colors.white70),
//                   ),
//                   // Add more comments as needed
//                 ],
//               ),
//             ),
//           ],
//         ),
//       );}
//       );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube/color/app_color.dart';
import 'package:youtube/controller/youtube_play_controller.dart';

class YoutubePlayVideo extends StatefulWidget {
  YoutubePlayVideo({super.key});

  @override
  State<YoutubePlayVideo> createState() => _YoutubePlayVideoState();
}

class _YoutubePlayVideoState extends State<YoutubePlayVideo> {
  final YoutubePlayController youtubeCtrl = Get.put(YoutubePlayController());
  late VideoPlayerController _videoController;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset(
        'assets/videos/videoplayback.mp4',
      )
      ..initialize().then((_) {
        setState(() {
          _isInitialized = true;
          _videoController.play();
        });
      });
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: const Text("YouTube Video"),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child:
                  _isInitialized
                      ? VideoPlayer(_videoController)
                      : const Center(child: CircularProgressIndicator()),
            ),
            VideoProgressIndicator(_videoController, allowScrubbing: true),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "NEW! Mickey Mouse Clubhouse+ First FULL Episode! ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          youtubeCtrl.ifliked == true
                              ? Icons.thumb_up
                              : Icons.thumb_up_alt_outlined,
                          color:
                              youtubeCtrl.ifliked == true
                                  ? Colors.white
                                  : AppColor.primarycolor,
                        ),
                        onPressed: youtubeCtrl.like,
                      ),
                      const Text("12K", style: TextStyle(color: Colors.white)),
                      IconButton(
                        icon: const Icon(
                          Icons.thumb_down_alt_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      const Text(
                        "Dislike",
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                        icon: const Icon(Icons.share, color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.white24),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColor.primarycolor,
                child: Container(
                  height: screenHeight * 0.1,
                  width: screenWidth * 0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://animationvisarts.com/wp-content/uploads/2023/09/qfFFFhnM8LwZnjpTECN3oB-1-1-edited.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              title: const Text(
                "Disney channel",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "1M subscribers",
                style: TextStyle(color: Colors.white70),
              ),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primarycolor,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Text("SUBSCRIBE"),
              ),
            ),
            const Divider(color: Colors.white24),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(12),
                children: const [
                  Text(
                    "Comments",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "User1: Great video!",
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "User2: Thanks for sharing.",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
