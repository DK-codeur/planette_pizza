import 'package:flutter/material.dart';
import 'package:planete_pizza/src/screens/testt.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAGE 1'),
      ),

      body: Center(
        child: Hero(
          tag: 'img',
          child: IconButton(
            icon: Icon(Icons.home, size: 50,),
            onPressed: () => Navigator.push(
              context, MaterialPageRoute(
                builder: (ctx) => Testt()
              )
            ),
          ),
        ),
      ),
    );
  }
}