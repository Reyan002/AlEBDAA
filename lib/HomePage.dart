import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [new Image.asset("asset/images/language.jpg")]),
        ),
      )),
      bottomSheet: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              child: new Text(
                'English',
                style: new TextStyle(fontSize: 18),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.black)),
              onPressed: arabic,
              textColor: Colors.black,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: RaisedButton(
              child: new Text(
                'Arabic',
                style: new TextStyle(fontSize: 18),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.black)),
              onPressed: arabic,
              textColor: Colors.black,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  void arabic() {}
}
