import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappalebdaa/translations_delegate_base.dart';
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
        title: new Text(TranslationBase.of(context).list),backgroundColor: Colors.orange
      ),
      body: Stack(
        children: <Widget>[


      Container(
      foregroundDecoration: const BoxDecoration(
      image: DecorationImage(
      image: AssetImage (
      'asset/images/backfinala.png'),
        fit: BoxFit.fill),
    ),),
          Container(
            color: Colors.white38,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[


                  Row(
                    children: <Widget>[
                      Expanded(child: Card(
                        color: Colors.black54,
                        child: Container(
                          padding: EdgeInsets.all(20),

                          child: Center(
                            child: Column(
                              children: <Widget>[



                                FlatButton.icon(onPressed: ( ){Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => CultivationChart()),
                                );}, icon: Icon(Icons.table_chart,size: 100,color: Colors.orange,), label: Text(""))
                                ,Text(TranslationBase.of(context).cultichart,style: TextStyle(fontSize: 18,color: Colors.white),),
                              ],
                            ),
                          ),
                        ),
                      ),

                      ),
                      Expanded(child: Card(
                        color: Colors.black54,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Center(

                            child: Column(
                              children: <Widget>[



                                FlatButton.icon(onPressed: ( ){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => OrganicGuild()),
                                  );
                                }, icon: Icon(Icons.supervised_user_circle,size: 100,color: Colors.orange,), label: Text(""))
                                ,Text(TranslationBase.of(context).organic,style: TextStyle(fontSize: 18,color: Colors.white),),
                              ],
                            ),
                          ),
                        ),
                      ),

                      )
                    ],
                  )
                ],
              ),
            ),
          )


        ],
      )
    );
  }
}



//Container(
//
//child: Column(
//children: <Widget>[
//Container(
//
//padding: EdgeInsets.all(15),
//
//color: Colors.black,
//child:  Row(
//
//children: <Widget>[
//
//
//
//Expanded(
//
//child:      new Text(TranslationBase.of(context).sno,
//style: new TextStyle(fontSize: 18,color: Colors.orange,),
//),
//),
//Expanded(
//child:      new Text(TranslationBase.of(context).title,
//style: new TextStyle(fontSize: 18,color: Colors.orange,),
//textAlign: TextAlign.center,),
//),  Expanded(
//child:      new Text(TranslationBase.of(context).more,
//style: new TextStyle(fontSize: 18,color: Colors.orange,),
//textAlign: TextAlign.end,),
//),
//],
//), ),
//Container(
//padding: EdgeInsets.all(15),
////
//child:  new GestureDetector(
//onTap: () {
//Navigator.push(
//context,
//MaterialPageRoute(builder: (context) => CultivationChart()),
//);
//},
//
//child: Row(
//
//
//children: <Widget>[
//
//
//
//Expanded(
//
//child:      new Text(TranslationBase.of(context).one,
//style: new TextStyle(fontSize: 18,color: Colors.black,),
//),
//),
//Expanded(
//child:      new Text(TranslationBase.of(context).cultichart,
//style: new TextStyle(fontSize: 16,color: Colors.black,),
//textAlign: TextAlign.center,),
//),  Expanded(
//child:      new Text(">",
//style: new TextStyle(fontSize: 18,color: Colors.black,),
//textAlign: TextAlign.end,),
//),
//],
//
//),
//)
//
//
//),
//Container(
//padding: EdgeInsets.all(15),
//child: new GestureDetector(
//onTap: () {
//Navigator.push(
//context,
//MaterialPageRoute(builder: (context) => OrganicGuild()),
//);
//},
//child:  Row(
//
//children: <Widget>[
//
//
//
//Expanded(
//
//child:      new Text(TranslationBase.of(context).two,
//style: new TextStyle(fontSize: 18,color: Colors.black,),
//),
//),
//Expanded(
//child:      new Text(TranslationBase.of(context).organic,
//style: new TextStyle(fontSize: 16,color: Colors.black,),
//textAlign: TextAlign.center,),
//),  Expanded(
//child:      new Text(">",
//style: new TextStyle(fontSize: 18,color: Colors.black,),
//textAlign: TextAlign.end,),
//),
//],
//),
//)
//)
//
//
//],
//)
//),//