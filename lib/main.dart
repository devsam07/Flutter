import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Awesome App",
    home: HomePage(),
  ));
}

/* class HomePage extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome Flutter"),
      ),
      body: Container(
        child: Center(child: 
        Container(
          padding: const EdgeInsets.all(15),
          alignment: Alignment.center,
          //color: Colors.indigoAccent,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            //shape: BoxShape.circle,
            color: Colors.indigoAccent),
          width: 100,
          height: 100,
          child: Text("I am a Box",textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),),
        )),
      ),
    );
  }
}*/

class HomePage extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome Flutter"),
      ),
      body: 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          Container(
          padding: const EdgeInsets.all(15),
          width: 100,
          height: 100,
          color: Colors.green),
          Container(
          padding: const EdgeInsets.all(15),
          width: 100,
          height: 100,
          color: Colors.black),
          Container(
          padding: const EdgeInsets.all(15),
          width: 100,
          height: 100,
          color: Colors.yellow)
        ],),
      );
  }
}