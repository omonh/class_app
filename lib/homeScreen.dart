import 'dart:html';

import 'package:class_app/second_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.deepPurple.shade300,
        child: Center(
          child: ElevatedButton(
            child: Text('dar'),
            onPressed: () {
              print('Hello');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            },
          ),
        ),
      ),
    );
  }
}
