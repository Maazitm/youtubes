import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:youtube/controller/user_controller.dart';

class Library extends StatefulWidget {
  Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

final controller = Get.put(UserController());
final user = controller.user.value;

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    controller.fetchUserData();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.cast, color: Colors.white, size: 25),
          SizedBox(width: 15),
          Icon(Icons.notifications, color: Colors.white, size: 25),
          SizedBox(width: 15),
          Icon(Icons.search, color: Colors.white, size: 25),
          SizedBox(width: 15),
          Icon(Icons.settings, color: Colors.white, size: 25),
          SizedBox(width: 15),
        ],
      ),
      body: Obx(() {
        return controller.user.value == null
            ? CircularProgressIndicator()
            : SingleChildScrollView(
              child: Column(
                children: [
                  // Profile Section
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                user?.image ??
                                    "https://media.istockphoto.com/id/1335247217/vector/loading-icon-vector-illustration.jpg?s=612x612&w=0&k=20&c=jARr4Alv-d5U3bCa8eixuX2593e1rDiiWnvJLgHCkQM=",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                user?.name  ?? "________",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "${user?.channelName ??  ""}• ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "View channel >",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Horizontal Buttons
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 111, 111, 111),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.switch_account,
                              color: Colors.white,
                              size: 18,
                            ),
                            label: Text(
                              "Switch account",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(width: 12),
                          ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 111, 111, 111),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            icon: Text(
                              "G",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            label: Text(
                              "Google Account",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(width: 12),
                          ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 111, 111, 111),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 18,
                            ),
                            label: Text(
                              "Turn on Incognito",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 24),

                  // History Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "History",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        OutlinedButton(
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(
                              BorderSide(color: Colors.grey),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "View all",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 16),

                  // History Videos
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      children: [
                        // Video 1
                        Container(
                          width: 160,
                          margin: EdgeInsets.only(right: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 90,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey[800],
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Container(
                                        color: Colors.grey[700],
                                        child: Center(
                                          child: Icon(
                                            Icons.play_circle_fill,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 4,
                                      right: 4,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 4,
                                          vertical: 2,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.8),
                                          borderRadius: BorderRadius.circular(
                                            4,
                                          ),
                                        ),
                                        child: Text(
                                          "Mix",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Mix – Maula Ya Salli (slowed & reverb) | ...",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Ali Zafar, Ehsaan Tah...",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),

                        // Video 2
                        Container(
                          width: 160,
                          margin: EdgeInsets.only(right: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 90,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey[800],
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Container(
                                        color: Colors.grey[700],
                                        child: Center(
                                          child: Icon(
                                            Icons.play_circle_fill,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 4,
                                      right: 4,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 4,
                                          vertical: 2,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.8),
                                          borderRadius: BorderRadius.circular(
                                            4,
                                          ),
                                        ),
                                        child: Text(
                                          "7:11",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Rukh e Mustafa wo kitab hai ❤️|Slowed...",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 4),
                              Text(
                                "islamic videos",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),

                        // Video 3
                        Container(
                          width: 160,
                          margin: EdgeInsets.only(right: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 90,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey[800],
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Container(
                                        color: Colors.grey[700],
                                        child: Center(
                                          child: Icon(
                                            Icons.play_circle_fill,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Shorts",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 4),
                              Text(
                                "5 watched",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 24),

                  // Playlists Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Playlists",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.add, color: Colors.white, size: 24),
                            SizedBox(width: 16),
                            OutlinedButton(
                              style: ButtonStyle(
                                side: MaterialStateProperty.all(
                                  BorderSide(color: Colors.grey),
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "View all",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 16),

                  // Playlists
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      children: [
                        // Liked videos playlist
                        Container(
                          width: 160,
                          margin: EdgeInsets.only(right: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 90,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey[800],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.thumb_up,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "262",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Liked videos",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Private",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Watch Later playlist
                        Container(
                          width: 160,
                          margin: EdgeInsets.only(right: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 90,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey[800],
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Container(color: Colors.grey[700]),
                                    ),
                                    Positioned(
                                      bottom: 8,
                                      right: 8,
                                      child: Icon(
                                        Icons.access_time,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Watch Later",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Private",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Another playlist
                        Container(
                          width: 160,
                          margin: EdgeInsets.only(right: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 90,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey[800],
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "fav",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Public • 1",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 24),

                  // Your videos section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Icon(Icons.play_arrow, color: Colors.white, size: 24),
                        SizedBox(width: 16),
                        Text(
                          "Your videos",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 16),

                  // Downloads section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.download, color: Colors.white, size: 24),
                            SizedBox(width: 16),
                            Text(
                              "Downloads",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.check_circle, color: Colors.white, size: 24),
                      ],
                    ),
                  ),

                  SizedBox(height: 16),

                  // Purchases section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Icon(Icons.shopping_bag, color: Colors.white, size: 24),
                        SizedBox(width: 16),
                        Text(
                          "Budgets",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    height: 0.5,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Icon(Icons.shopping_bag, color: Colors.white, size: 24),
                        SizedBox(width: 16),
                        Text(
                          "Your Movies",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Icon(Icons.shopping_bag, color: Colors.white, size: 24),
                        SizedBox(width: 16),
                        Text(
                          "Get Youtube Premium",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
      }),
    );
  }
}
