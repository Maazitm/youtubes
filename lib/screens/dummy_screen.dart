import 'package:flutter/material.dart';
import 'package:youtube/custom_widget/custom_contianer.dart';

class DummyScreen extends StatefulWidget {
  const DummyScreen({super.key});

  @override
  State<DummyScreen> createState() => _DummyScreenState();
}

class _DummyScreenState extends State<DummyScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("dummy screen"),
        backgroundColor: Colors.blueAccent,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: screenHeight * 0.8,
            width: screenwidth * 0.5,

            color: Colors.blue,
            child: Text(
              "dummy screen ",
              style: TextStyle(fontSize: screenwidth * 0.09),
            ),
          ),

          // CustomContianer(
          //       height: screenHeight * 0.8,
          // width: screenwidth * 0.5,
          //   imageurl: "https://animationvisarts.com/wp-content/uploads/2023/09/qfFFFhnM8LwZnjpTECN3oB-1-1-edited.jpg",
          // )
        ],
      ),
    );
  }
}
