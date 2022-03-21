import 'package:flutter/material.dart';

class TextBuilder extends StatelessWidget {
  TextBuilder({Key? key, required this.heading}) : super(key: key);
  var heading;

  @override
  Widget build(BuildContext context) {
    return Text(
      ' $heading',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
    );
  }
}
