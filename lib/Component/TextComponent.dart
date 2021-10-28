import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {

  final String text;
  final Color color ;
  final double size;


  TextComponent(this.text , this.color , this.size);




  @override
  Widget build(BuildContext context) {
    return Text(
       text ,
        textAlign: TextAlign.center,
        style: TextStyle(
        fontSize: size,
        color: color
    ),
    );
  }
}
