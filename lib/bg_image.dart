import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/PC.jpg", 
      height: 400,
      fit: BoxFit.cover,
      color: Colors.black.withOpacity(0.1),
      colorBlendMode: BlendMode.darken,
      );
  }
}