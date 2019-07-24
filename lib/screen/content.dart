import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
        
      ),
      body: ListView(
        children: <Widget>[
          Text("data 1")
        ],
      ),
    );
  }
}