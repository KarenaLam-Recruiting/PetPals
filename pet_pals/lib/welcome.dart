import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[200],
          centerTitle: true,
          title: Text(
            'PetPals',
            style: TextStyle(
              fontSize: 25,
              ),
            ),
        ),
        //backgroundColor: Colors.blue[200],
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
              ),
              Icon(
                Icons.person,
                size: 50,
                color: Colors.black,
              ),
              Container(
                height: 100,
              ),
              Text(            
                'Where tails wag and hearts...',
                style: TextStyle(
                fontSize: 15,
                ),
              ),
              Container(
                height: 25,
              ),
              Text(
                'Swipe Right',
                style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
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
        ),
      ),
      );
  }
}