import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Center(
      child: Text(
        "Second Page",
        style: TextStyle(fontSize: 20, color: Colors.purple),
      ),
    ));
  }
}
