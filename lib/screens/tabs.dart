import 'package:flutter/material.dart';
import 'package:youtube/screens/library.dart';
import 'package:youtube/screens/shorts.dart';
import 'package:youtube/screens/subscription.dart';
import 'package:youtube/screens/youtube.dart';


class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int _selectedIndex  = 0;
   final List<Widget> _Screens =[
    Youtube(),
    Shorts(),
    Center(child: Icon(Icons.add_circle_outline, size: 80, color: Colors.black)),
    Subscription(),
    Library(),
    ];

  void _onItemTapped (int index){
    setState(() {
        _selectedIndex = index;
    });
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:   _Screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.white),
        selectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow_rounded),
            label: "Shorts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Library',
          ),
          
        ],
      ),
    );
  }
}