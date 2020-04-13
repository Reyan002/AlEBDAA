import 'package:flutter/material.dart';
import 'package:flutterappalebdaa/AboutUs.dart';
import 'AboutUs.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            onPressed: arabic
//                () {
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => AboutUs()),
//              );
//            }
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
}
