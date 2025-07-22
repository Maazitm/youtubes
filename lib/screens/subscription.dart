import 'package:flutter/material.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        leading: Container(
          height: 70,
          width: 70,
          child: Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/2560px-YouTube_full-color_icon_%282017%29.svg.png",
          ),
        ),
        title: Text(
          "Youtube",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.black,
        actions: [
          Row(
            children: [
              Icon(Icons.cast, size: 30, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.notifications, size: 30, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.search, size: 30, color: Colors.white),
            ],
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                    8,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(color: Colors.grey, width: 3),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy9iS4rsz5DqyOJpjJSSo5m1sMmnIaT6EM_w&s",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white12,
                      foregroundColor: Colors.white,
                      shape: StadiumBorder(),
                    ),
                    child: Text("All"),
                    ),
                    SizedBox(width: 7,),
                    ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white12,
                      foregroundColor: Colors.white,
                      shape: StadiumBorder(),
                    ),
                    child: Text("Today"),
                    ),
                     SizedBox(width: 7,),
                    ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white12,
                      foregroundColor: Colors.white,
                      shape: StadiumBorder(),
                    ),
                    child: Text("Continue Watching"),
                    ),
                     SizedBox(width: 7,),
                    ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white12,
                      foregroundColor: Colors.white,
                      shape: StadiumBorder(),
                    ),
                    child: Text("Unwatched"),
                    ),
                     SizedBox(width: 7,),
                    ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white12,
                      foregroundColor: Colors.white,
                      shape: StadiumBorder(),
                    ),
                    child: Text("Live"),
                    ),
                     SizedBox(width: 7,),
                    ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white12,
                      foregroundColor: Colors.white,
                      shape: StadiumBorder(),
                    ),
                    
                    child: Text("Posts"),
                    ),
                     SizedBox(width: 7,),
                    ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white12,
                      foregroundColor: Colors.white,
                      shape: StadiumBorder(),
                    ),
                    child: Text("Settings"),
                    ),
                     SizedBox(width: 7,),
                  ],
                  ),
                ),
              ),
        
        
               Container(
                decoration: BoxDecoration(color: Colors.grey.shade300  ,image: DecorationImage(image: NetworkImage("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/coffee-and-study-youtube-thumbnail-design-template-bc4975e87cb0c04c2af5f9abed675f2e_screen.jpg?ts=1589615831"),fit: BoxFit.cover)),
                height: 250,
                width: double.infinity,
               
                child: Padding(
                  padding: const EdgeInsets.only(top: 220 ,left: 320 ,right: 10,bottom: 10),
                  child: Container(
                    height: 30,width: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 255, 17, 0),),
                    child: Row(
                      children: [
                        Icon(Icons.cast ,color: Colors.white, size: 10),
                        Text("Live" ,style: TextStyle(color: Colors.white),),
                      ],
                    )),
                ),
               
                
              ),
                SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://cdn.dribbble.com/userupload/29466076/file/original-ba33901121ed678c59f90d9a6fca0438.gif",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Doraemon and its Friends",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Doraemon his storys",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 70,
                    //width: 80,
                    child: Image.network(
                      "https://img.pikbest.com/origin/09/21/29/70epIkbEsTFJf.png!sw800",
                    ),
                  ),
                  Text(
                    "Shorts ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(left: 180)),
                  Icon(Icons.more_vert, color: Colors.white),
                ],
              ),
        
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 300,
                      width: 185,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://w0.peakpx.com/wallpaper/660/259/HD-wallpaper-tom-and-jerry-cartoons-thumbnail.jpg",
                          ),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 300,
                      width: 185,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://i.pinimg.com/474x/9f/a1/ba/9fa1ba3e7dd1298712e3958ac8c3a671.jpg",
                          ),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 300,
                      width: 185,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://images.justwatch.com/poster/323283688/s718/ninja-hattori.jpg",
                          ),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ],
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
