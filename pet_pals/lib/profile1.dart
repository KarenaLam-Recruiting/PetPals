import 'package:flutter/material.dart';
import 'navigation.dart';
import 'appbar.dart';
import 'multiselect.dart';

class Profile1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [          
            CustomizedAppBar(),
            Image.asset(
                'lib/images/IMG_3846.jpg',  // Adjust the path based on your project structure
                width: 400,
                height: 341,
                fit: BoxFit.cover,
              ),
            Text(
              'Name: Is Mayonnaise An Instrument (Mayo)',
              textAlign: TextAlign.left
            ),
            Text(
              'Age: < 1 Month',
              textAlign: TextAlign.left
            ),
            Text(
              'Species: Fish',
              textAlign: TextAlign.left
            ),
            Text(
              'Breed: Betta Fish',
              textAlign: TextAlign.left
            ),
            MultiselectComp(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: 
                Text(
                'Biography: I like swimming in my tank without any competition for anything in my life: food, my owners attention, and hopefully a female. However, my mom says I am "too aggressive" but I have to disagree. I am a sweet boy that likes taking laps around the tank and eating all my food',
                // overflow: TextOverflow.clip,
                // textAlign: TextAlign.justify,
                ),
            ),
            Navigation()
          ],
        ),
      ),
    );
  }
}