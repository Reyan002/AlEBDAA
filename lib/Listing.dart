import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CultivationChart.dart';
import 'OrganicGuild.dart';

class Listing extends StatefulWidget {
  @override
  _ListingState createState() => _ListingState();
}

class _ListingState extends State<Listing> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Listing"),backgroundColor: Colors.orange
      ),
      body: Container(

        child: Column(
          children: <Widget>[
            Container(

               padding: EdgeInsets.all(15),

              color: Colors.black,
              child:  Row(

              children: <Widget>[



                Expanded(

                  child:      new Text("S. No.",
                    style: new TextStyle(fontSize: 18,color: Colors.orange,),
                  ),
                ),
                Expanded(
                  child:      new Text("Title",
                    style: new TextStyle(fontSize: 18,color: Colors.orange,),
                    textAlign: TextAlign.center,),
                ),  Expanded(
                  child:      new Text("More",
                    style: new TextStyle(fontSize: 18,color: Colors.orange,),
                    textAlign: TextAlign.end,),
                ),
              ],
            ), ),
            Container(
              padding: EdgeInsets.all(15),
//
               child:  new GestureDetector(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => CultivationChart()),
                   );
                 },

                 child: Row(


                   children: <Widget>[



                     Expanded(

                       child:      new Text("1",
                         style: new TextStyle(fontSize: 18,color: Colors.black,),
                       ),
                     ),
                     Expanded(
                       child:      new Text("Cultivation Chart",
                         style: new TextStyle(fontSize: 16,color: Colors.black,),
                         textAlign: TextAlign.center,),
                     ),  Expanded(
                       child:      new Text(">",
                         style: new TextStyle(fontSize: 18,color: Colors.black,),
                         textAlign: TextAlign.end,),
                     ),
                   ],

                 ),
               )


            ),
            Container(
              padding: EdgeInsets.all(15),
               child: new GestureDetector(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => OrganicGuild()),
                   );
                 },
                 child:  Row(

                   children: <Widget>[



                     Expanded(

                       child:      new Text("2",
                         style: new TextStyle(fontSize: 18,color: Colors.black,),
                       ),
                     ),
                     Expanded(
                       child:      new Text("Organic Guild",
                         style: new TextStyle(fontSize: 16,color: Colors.black,),
                         textAlign: TextAlign.center,),
                     ),  Expanded(
                       child:      new Text(">",
                         style: new TextStyle(fontSize: 18,color: Colors.black,),
                         textAlign: TextAlign.end,),
                     ),
                   ],
                 ),
               )
            )


          ],
        )
      ),
    );
  }
}
