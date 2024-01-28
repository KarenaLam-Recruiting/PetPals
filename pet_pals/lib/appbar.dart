import 'package:flutter/material.dart';

class CustomizedAppBar extends StatelessWidget{
  CustomizedAppBar();

  @override
  Widget build(BuildContext context){
    return AppBar(
      backgroundColor: Colors.pink[200],
      centerTitle: true,
      title: Text(
        'PetPals',
        style: TextStyle(
          fontSize: 25,
          ),
        ),
        leading: Icon(Icons.filter_alt),
        );
  }
}