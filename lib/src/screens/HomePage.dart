import 'dart:async';

import 'package:flutter/material.dart';
import 'Dashboard.dart';


class HomePage extends StatefulWidget {
  final String pageTitle;

  HomePage({Key key, this.pageTitle}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    Timer(Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Dashboard()
      ));

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 300,
            width: 300,
            child: Image.asset(
              'images/splash.png',
              // fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 40.0,),
          CircularProgressIndicator(),

        
        ],
      )),
      backgroundColor: Colors.white
    );
  }
}
