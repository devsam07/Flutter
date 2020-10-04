import 'package:excerciseflutter/Home/home_index.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Awesome App",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}