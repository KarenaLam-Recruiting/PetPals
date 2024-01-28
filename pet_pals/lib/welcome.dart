import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  PageController _pageController = PageController(initialPage: 0);
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
        body: PageView(
          controller: _pageController,
          children: [
            buildPage(Icons.home, 'Home Page', 'Swipe Right'),
            buildPage(Icons.person, 'Profile Page', 'Swipe Right'),
            buildPage(Icons.settings, 'Settings Page', 'Swipe Left'),
          ]
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
          onTap: (index) {
            _pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          },
        ),
      ),
    );
  }
  Widget buildFirstPage() {
    return Center(
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
    );
  }
  Widget buildPage(IconData icon, String title, String subtitle) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 50,
            color: Colors.black,
          ),
          SizedBox(height: 16),
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 25),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}