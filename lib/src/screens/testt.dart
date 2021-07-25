import 'package:flutter/material.dart';

class Testt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAGE 2'),
      ),

      body: Container(
        child: Hero(
          tag: 'img',
          child: Icon(Icons.home)
        ),
      ),
    );
  }
}