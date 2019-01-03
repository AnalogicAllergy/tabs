import 'package:flutter/material.dart';

import './due.dart' as duo;
import './uno.dart' as uno;

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Tab"),
          bottom: TabBar(controller: _controller, tabs: <Widget>[
            Tab(icon: Icon(Icons.access_alarm)),
            Tab(icon: Icon(Icons.account_balance))
          ])),
      body: TabBarView(
          controller: _controller,
          children: <Widget>[uno.FirstPage(), duo.SecondPage()]),
    );
  }
}
