//import 'dart:js';

import 'package:excerciseflutter/Home/home_index.dart';
import 'package:excerciseflutter/Home/login.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Awesome App",
    //home: HomePage(),
    home: Login(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    routes: {
      "/login": (context) => Login(),
      "/home": (context) => HomePage()
    },
  ));
}