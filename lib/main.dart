import 'dart:async';

import 'package:flutter/material.dart';
import 'Home.dart';
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
            builder: (BuildContext context) => Home())));
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

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(


        body: new Container(
            child:  Center(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      new Image.asset("asset/images/language.jpg")
                    ]
                ),
              ),
            )
        )
,bottomSheet: Row(


      children: <Widget>[


        SizedBox(width: 7,),
        Container(
          padding: EdgeInsets.all(5.0),




          width: 200,
          height: 60,
          child: RaisedButton(

            child: new Text('English',style: new TextStyle(
              fontSize: 18
            ),),
            shape:  RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.black)
            ),
            // Within the `FirstRoute` widget
            onPressed: () {
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
        );
        }
          ,
            textColor: Colors.black,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 8,),
        Container(
          padding: EdgeInsets.all(5.0),

          width: 200,
          height: 60,
          child: RaisedButton(

            child: new Text('Arabic',style: new TextStyle(
                fontSize: 18
            ),),

            shape:  RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.black)
            ),
            onPressed: arabic,

            textColor: Colors.black,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 7,),

      ],
    ),

    );
  }

  void arabic() {
  }
  void english() {

  }
}