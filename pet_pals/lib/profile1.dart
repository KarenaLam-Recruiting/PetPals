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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomizedAppBar(),
            Padding(
              padding: EdgeInsets.fromLTRB(15,10,5,0),
              child:            
              Text(
                'Name: Is Mayonnaise An Instrument (Mayo)',
                textAlign: TextAlign.left
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15,5,5,0),
              child: 
                Text(
                'Age: < 1 Month',
                textAlign: TextAlign.left
                ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15,5,5,0),
              child: 
              Text(
                'Species: Fish',
                textAlign: TextAlign.left
                ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15,5,20,0),
              child:
              Text(
                'Breed: Betta Fish',
                textAlign: TextAlign.left
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15,15,15,0),
              child: MultiselectComp(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15,20,10,0),
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