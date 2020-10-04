import 'package:excerciseflutter/change_name_card.dart';
import 'package:excerciseflutter/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget { 
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

TextEditingController _nameController = TextEditingController();
var myText = "Change Me";
@override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Flutter"),
      ),
      body: Padding(padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
            child: Card(
          child: ChangeNameCard(myText: myText, nameController: _nameController),
        ),
      ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
      onPressed: () {
        myText = _nameController.text;
        setState(() {     
        });
      },
      child: Icon(Icons.refresh),
      ),

      );
  }
}