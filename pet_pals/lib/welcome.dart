import 'package:flutter/material.dart';
import 'appbar.dart';
import 'profile1.dart';
import 'profile2.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomizedAppBar(),
        body: PageView(
          controller: _pageController,
          children: [
            buildFirstPage(),
            // Image.asset(
            //     'lib/images/tired.jpg',  // Adjust the path based on your project structure
            //     width: 180,
            //     height: 180,
            //     fit: BoxFit.cover,
            //   ),
            Image.asset(
                'lib/images/IMG_3452.jpg',  // Adjust the path based on your project structure
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              ),
            Image.asset(
                'lib/images/IMG_3462.jpg',  // Adjust the path based on your project structure
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              ),
            Image.asset(
                'lib/images/IMG_3470.jpg',  // Adjust the path based on your project structure
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              ),
            Image.asset(
                'lib/images/IMG_3506.jpg',  // Adjust the path based on your project structure
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              ),
            Image.asset(
                'lib/images/orange cat.jpg',  // Adjust the path based on your project structure
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              ),
            Image.asset(
                'lib/images/IMG_3805.jpg',  // Adjust the path based on your project structure
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              ),
              GestureDetector(
              onTap: () {
                // When the image is tapped, navigate to the Profile1 page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile2()),
                );
              },
              child: Image.asset(
                'lib/images/tired.jpg',
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
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
            _navigateToPage(index);
          },
        ),
      ),
    );
  }
  void _navigateToPage(int index) {
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
    if (index == 0) {
      // If the home page button is pressed, navigate to the first page
      _pageController.jumpToPage(0);
    }
    if (index == 1) {
    // If the "Profile" button is pressed, navigate to the Profile1 page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Profile1()),
      );
    }
  }
  Widget buildFirstPage() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
          ),
          Image.asset(
            'lib/images/Pet Pals.jpg',  // Adjust the path based on your project structure
            width: 180,
            height: 180,
            fit: BoxFit.cover,
          ),
          Container(
            height: 50,
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