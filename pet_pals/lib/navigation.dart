import 'package:flutter/material.dart';

class Navigation extends StatelessWidget{
  Navigation();

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
      
    );
  }
}