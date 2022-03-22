import 'package:class_app/screens/homescreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MusicApp());
}
class MusicApp extends StatelessWidget {
  const MusicApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
      
    );
  }
}