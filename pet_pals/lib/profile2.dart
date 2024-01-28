import 'package:flutter/material.dart';
import 'navigation.dart';
import 'appbar.dart';
import 'multiselect.dart';

class Profile2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [          
            CustomizedAppBar(),
            Image.asset(
                'lib/images/tired.jpg',  // Adjust the path based on your project structure
                width: 412,
                height: 240,
                fit: BoxFit.cover,
              ),
            Padding(
              padding: EdgeInsets.fromLTRB(15,5,5,0),
              child: 
                Text(
                'Name: Stella',
                textAlign: TextAlign.left
                ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15,5,5,0),
              child: 
                Text(
                'Age: 6 Years',
                textAlign: TextAlign.left
                ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15,5,5,0),
              child: 
              Text(
                'Species: Cat',
                textAlign: TextAlign.left
                ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15,5,20,0),
              child:
              Text(
                'Breed: Tabby',
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
                'Biography: I am a princess that rules over the house with no authority over my own. I like to chase others away from my food and knocking over Dr. Pepper cans onto my parents beds. Even though I have been described as spicy, I make biscuits and cuddle on snowy winter nights.',
                textAlign: TextAlign.left
                ),
            ),
            Navigation()
          ],
        ),
      ),
    );
  }
}