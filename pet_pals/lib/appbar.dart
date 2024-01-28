import 'package:flutter/material.dart';

class CustomizedAppBar extends StatelessWidget implements PreferredSizeWidget{
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
      leading: PopupMenuButton<String>(
        onSelected: (String value) {
        // Handle the selected value
          if (value == 'other') {
            _showCustomInputDialog(context);
          } else {
            print('Selected: $value');
          }
        },
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem<String>(
              value: 'filter1',
              child: Text('Squirrel!'),
            ),
            PopupMenuItem<String>(
              value: 'filter2',
              child: Text('Running away'),
            ),
            PopupMenuItem<String>(
              value: 'filter3',
              child: Text('Naps'),
            ),
            PopupMenuItem<String>(
              value: 'filter3',
              child: Text('Cuddling'),
            ),
            PopupMenuItem<String>(
              value: 'filter3',
              child: Text('Complaining'),
            ),
            PopupMenuItem<String>(
              value: 'filter3',
              child: Text('Walks'),
            ),
            PopupMenuItem<String>(
              value: 'filter3',
              child: Text('Swimming'),
            ),
            PopupMenuItem<String>(
              value: 'other',
              child: Text('Other'),
            ),
            // Add more filters as needed
          ];
        },
      ),
    );
  }
  void _showCustomInputDialog(BuildContext context) {
    TextEditingController customFilterController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Custom Filter'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: customFilterController,
                decoration: InputDecoration(labelText: 'Enter custom filter'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  String customFilter = customFilterController.text;
                  if (customFilter.isNotEmpty) {
                    // Do something with the custom filter (e.g., save it)
                    print('Custom Filter: $customFilter');
                  }
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: Text('Save'),
              ),
            ],
          ),
        );
      },
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}