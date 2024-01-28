import 'package:flutter/material.dart';
import 'navigation.dart';
import 'appbar.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomizedAppBar(),
              Container(
                height: 125,
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
              Container(
                height: 225,
              ),
              Navigation(),
            ],
          ),
        ),
      ),
    );
  }
}