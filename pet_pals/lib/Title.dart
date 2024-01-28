import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage (),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[200],
          title: Text('Pet Pals'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Image.asset(
                'lib/images/Pet Pals.jpg',  // Adjust the path based on your project structure
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  print('Sign In button pressed!');
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(200, 50),
                  backgroundColor: Colors.green[300], // Change the background color
                ),
                child: Text('Sign In'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  print('Create Account button pressed!');
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(200, 50),
                  backgroundColor: Colors.blue[300], // Change the background color
                ),
                child: Text('Create Account'),
              ),
              // SizedBox(height: 16),
              // Image.asset(
              //   'lib/images/Pet Pals.jpg',  // Adjust the path based on your project structure
              //   width: 200,
              //   height: 200,
              //   fit: BoxFit.cover,
              // ),
            ],
          ),
        ),
      ),
    );
  }
} 