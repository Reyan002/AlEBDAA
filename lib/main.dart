import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterappalebdaa/scope_model_wrapper.dart';
  void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => new ScopeModelWrapper())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(

        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new Image.asset("asset/images/Splash.jpg")
            ],
          ),
        )
      ),
    );
  }
}


