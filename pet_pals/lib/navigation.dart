import 'package:flutter/material.dart';

class Navigation extends StatelessWidget{
  Navigation();
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
      backgroundColor: Colors.blue[200],
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      onTap: (index) {
        _pageController.animateToPage(
          index,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
    );
  }
}