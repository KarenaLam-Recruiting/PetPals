import 'package:flutter/material.dart';
import 'package:flutter_multiselect/flutter_multiselect.dart';

class MultiselectComp extends StatefulWidget{
  @override
  MultiselectState createState() => MultiselectState();
}

class MultiselectState extends State<MultiselectComp>{
List<dynamic> selectedValues = [];

  @override
  Widget build(BuildContext context){
    return MultiSelect(
      titleText: 'Interests/Hobbies',
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select at least one item';
        }
        return null;
      },
      required: true,
      dataSource:[
        {'value': 1, 'display': 'Squirrel'},
        {'value': 2, 'display': 'Fooooooooood (Feed me)'},
        {'value': 3, 'display': 'Cuddling'},
        {'value': 4, 'display': 'Walks'},
      ],
      textField: 'display',
      valueField: 'value',
      value: selectedValues,
      onSaved: (value){
        setState((){
          selectedValues = value;
        });
      },
    );
  }
}