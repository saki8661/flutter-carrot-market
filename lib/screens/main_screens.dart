import 'package:carrot/screens/chatting/chatting_screen.dart';
import 'package:carrot/screens/home/home_screen.dart';
import 'package:carrot/screens/my_carrot/my_carrot_screen.dart';
import 'package:carrot/screens/near_me/near_me_screen.dart';
import 'package:carrot/screens/neighborhood_life/neighborhood_life_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          NeighborhoodScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen(),
          // Container(
          //   color: Colors.orange[100],
          //   child: Center(
          //     child: Text(
          //       'IndexStack 1',
          //       style: TextStyle(fontSize: 20, color: Colors.black),
          //     ),
          //   ),
          // ),
          // Container(
          //   color: Colors.redAccent[100],
          //   child: Center(
          //     child: Text(
          //       'IndexStack 2',
          //       style: TextStyle(fontSize: 20, color: Colors.black),
          //     ),
          //   ),
          // )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(
                () {
              _selectedIndex = index;
            },
          );
        },
        items: [
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(
              CupertinoIcons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: '동네생활',
            icon: Icon(
              CupertinoIcons.square_on_square,
            ),
          ),
          BottomNavigationBarItem(
            label: '내 근처',
            icon: Icon(
              CupertinoIcons.placemark,
            ),
          ),
          BottomNavigationBarItem(
            label: '채팅',
            icon: Icon(
              CupertinoIcons.chat_bubble_2,
            ),
          ),
          BottomNavigationBarItem(
            label: '나의 당근',
            icon: Icon(
              CupertinoIcons.person,
            ),
          ),
        ],
      ),
    );
  }
}
