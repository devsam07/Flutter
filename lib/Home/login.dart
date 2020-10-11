//import 'dart:js';

import 'package:excerciseflutter/Home/home_index.dart';
import 'package:excerciseflutter/bg_image.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BgImage(),

          Center(
            child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
            child:Card(
                child: Column(
                children: <Widget>[
                  Form(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(hintText: "Enter username", 
                        labelText: "Username: "),
                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(hintText: "Enter Password", 
                        labelText: "Password"),
                      )
                    ],
                    ),
                  )),
                  SizedBox(height: 20,),
                  RaisedButton(onPressed: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  child: Text("Sign In"),
                  color: Colors.orange,
                  textColor: Colors.white,
                  )
                ],
              ),
            )
        ),
      ),
          ),


          ],
      )
    );
  }
}
