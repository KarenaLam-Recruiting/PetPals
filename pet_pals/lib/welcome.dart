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
            'Welcome to PetPals',
            style: TextStyle(
              fontSize: 25,
              ),
            ),
        ),
        backgroundColor: Colors.blue[200],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                size: 50,
                color: Colors.black,
              ),
              Text(            
                'Swipe right to begin',
                style: TextStyle(
                fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
      );
  }
}