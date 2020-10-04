import 'package:flutter/material.dart';

import 'bg_image.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
      BgImage(),
      SizedBox(height: 20,),
      Text(myText),
      SizedBox(height: 20,),

      Padding(padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _nameController,
        keyboardType: TextInputType.text,
        //obscureText: true,
        decoration: InputDecoration(
          hintText: "Enter something here..",
          border: OutlineInputBorder(),
          labelText: "Name",
          ),
          ),
      )
      ],
    );
  }
}