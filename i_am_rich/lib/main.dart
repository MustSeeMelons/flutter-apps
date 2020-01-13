import 'package:flutter/material.dart';

// main is the entry point
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lime[400],
        appBar: AppBar(
          backgroundColor: Colors.lime[600],
          title: Center(
            child: Text("I Am Rich"),
          ),
        ),
        body: Center(
          child: Image(
            image: AssetImage("images/diamond.png"),
          ),
        ),
      ),
    ),
  );
}
