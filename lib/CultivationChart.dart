import 'package:flutter/material.dart';
import 'package:flutterappalebdaa/translations_delegate_base.dart';
import 'Items.dart';
import 'dart:convert';

class CultivationChart extends StatefulWidget {
  @override
  _CultivationChartState createState() => _CultivationChartState();
}

class _CultivationChartState extends State<CultivationChart> {
  List<Items> postList = [];

  String extent= "en";




  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    extent=TranslationBase.of(context).en;

    return new Scaffold(
        appBar: new AppBar(
            title: new Text(TranslationBase.of(context).cultichart),
            backgroundColor: Colors.orange),
        body: Stack(
          children: <Widget>[
            Container(
            child: FutureBuilder(builder: (context,snapshot){
              var showData=json.decode(snapshot.data.toString());

              return ListView.builder(
                scrollDirection: Axis.horizontal,

                itemBuilder: (BuildContext context, int index){
                  return listItemUi(
                            showData[index]['image'],
                            showData[index]['name'],
                            showData[index]['plant'],
                            showData[index]['inThe'],
                            showData[index]['harvest'],
                            showData[index]['family'],
                            );

//                  return ListTile(
//                    title: Text(showData[index]['empname']),
//                    subtitle: Text(showData[index]['department']),
//                  );
                },
                itemCount: showData.length,
              );
            },
        future:
        DefaultAssetBundle.of(context).loadString("asset/locale/$extent.json"),
         )

//              postList.length == 0
//                  ? new Text("No Chart Is Available")
//                  : new ListView.builder(
//                      physics: PageScrollPhysics(),
//                      itemCount: postList.length,
//                      scrollDirection: Axis.horizontal,
//                      itemBuilder: (context, index) {
//                        return listItemUi(
//                            postList[index].image,
//                            postList[index].name,
//                            postList[index].plant,
//
//                            postList[index].inThe,
//                            postList[index].harvest,
//                            postList[index].family);
//                      }),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "",
                          height: 150,
                          width: 160,
                        ),
                        Expanded(
                            child: Container(
                                width: double.infinity,
                                color: Colors.white,
                                child: Center(
                                  child: Text(
                                    TranslationBase.of(context).name,
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                        Expanded(
                            child: Container(
                                width: double.infinity,
                                color: Colors.white,
                                child: Center(
                                  child: Text(
                                    TranslationBase.of(context).plant,
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                        Expanded(
                            child: Container(
                                width: double.infinity,
                                color: Colors.white,
                                child: Center(
                                  child: Text(
                                    TranslationBase.of(context).inthe,
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                        Expanded(
                            child: Container(
                                width: double.infinity,
                                color: Colors.white,
                                child: Center(
                                  child: Text(
                                    TranslationBase.of(context).harv,
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                        Expanded(
                            child: Container(
                                width: double.infinity,
                                color: Colors.white,
                                child: Center(
                                  child: Text(
                                    TranslationBase.of(context).family,
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ))),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "",
                          height: 150,
                          width: 160,
                        ),
                        Expanded(
                            child: Container(
                          width: double.infinity,
                        )),
                        Expanded(
                            child: Container(
                          width: double.infinity,
                        )),
                        Expanded(
                            child: Container(
                          width: double.infinity,
                        )),
                        Expanded(
                            child: Container(
                          width: double.infinity,
                        )),
                        Expanded(
                            child: Container(
                          width: double.infinity,
                        )),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "",
                          height: 150,
                          width: 160,
                        ),
                        Expanded(
                            child: Container(
                          width: double.infinity,
                          color: Colors.white,
                        )),
                        Expanded(
                            child: Container(
                          width: double.infinity,
                          color: Colors.white,
                        )),
                        Expanded(
                            child: Container(
                          width: double.infinity,
                          color: Colors.white,
                        )),
                        Expanded(
                            child: Container(
                          width: double.infinity,
                          color: Colors.white,
                        )),
                        Expanded(
                            child: Container(
                          width: double.infinity,
                          color: Colors.white,
                        )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        )

//            ?height: double.infinity,

//            child: ListView(
//              scrollDirection: Axis.horizontal,
//
//            )
//
//              children: <Widget>[
//                Container(
//
//                  child: Column(
//                    children: <Widget>[
//                      Image.asset("asset/images/contact.png",height: 150,width: 160,),
//                      Expanded(
//                        child: new Text("Banana",
//                          style: new TextStyle(fontSize: 24,color: Colors.black,),),
//                      ),
//                      Expanded(
//                        child: new Text("Banana",
//                          style: new TextStyle(fontSize: 24,color: Colors.black,),),
//                      ),
//                      Expanded(
//                        child: new Text("Banana",
//                          style: new TextStyle(fontSize: 24,color: Colors.black,),),
//                      ),
//                      Expanded(
//                        child: new Text("Banana",
//                          style: new TextStyle(fontSize: 24,color: Colors.black,),),
//                      ),
//                      Expanded(
//                        child: new Text("Banana",
//                          style: new TextStyle(fontSize: 24,color: Colors.black,),),
//                      ),
//
//                    ],
//                  ),
////                  width: 160.0,
////                  color: Colors.red,
//
//                ),
//                Container(
//                  width: 160.0,
//                  color: Colors.blue,
//                ),
//                Container(
//                  width: 160.0,
//                  color: Colors.green,
//                ),
//                Container(
//                  width: 160.0,
//                  color: Colors.yellow,
//                ),
//                Container(
//                  width: 160.0,
//                  color: Colors.orange,
//                ),
//              ],
//            ),
//        )
        );
  }

  Widget listItemUi(String image, String name, String plantDate,
      String inTheField, String harvest, String family) {
    return new Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: new BorderRadius.only(
              topLeft: Radius.circular(70.0), topRight: Radius.circular(70.0)),
        ),
      width: 140,
      child: Column(
        children: <Widget>[
          Container(

              padding: EdgeInsets.only(left: 10,right: 10),

              child: Image.asset(
                image,
                height: 150,
                width: 160,
              ),
           
          ),
          Expanded(
            child: Container(
              color: Colors.orange[500],
              child: Center(
                child: new Text(
                  name,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orange[400],
              child: Center(
                child: new Text(
                  plantDate,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orange[300],
              child: Center(
                child: new Text(
                  inTheField,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orange[200],
              child: Center(
                child: new Text(
                  harvest,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orange[100],
              child: Center(
                child: new Text(
                  family,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
//                  width: 160.0,
//                  color: Colors.red,
    );
  }
}
