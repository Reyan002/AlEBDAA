import 'package:flutter/material.dart';
import 'Items.dart';

class CultivationChart extends StatefulWidget {
  @override
  _CultivationChartState createState() => _CultivationChartState();
}

class _CultivationChartState extends State<CultivationChart> {
  List<Items> postList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    postList.clear();

    postList.add(new Items( "",""  ,""  ,""  ,""  ,""  ,Colors.white) );
    postList.add(new Items("asset/images/pumpkin.png", "Pumpkin", "Feb & Mar", "Sep & Oct",
        "180 Days", "Cucurbitaceae",Colors.green));
    postList.add(new Items("asset/images/ridgecucumber.png", "Ridge Cucumber", "Feb", "Sep",
        "4o Days", "Cucurbitaceae",Colors.blue));
    postList.add(new Items("asset/images/pumpkin.png", "Pumpkin", "Feb & Mar", "Sep & Oct",
        "180 Days", "Cucurbitaceae",Colors.green));
    postList.add(new Items("asset/images/ridgecucumber.png", "Ridge Cucumber", "Feb", "Sep",
        "4o Days", "Cucurbitaceae",Colors.blue));

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("Cultivation Chart"),
            backgroundColor: Colors.orange),
        body: Stack(
          children: <Widget>[
            Container(
              child: postList.length == 0
                  ? new Text("No Chart Is Available")
                  : new ListView.builder(
                      physics: PageScrollPhysics(),
                      itemCount: postList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return listItemUi(
                            postList[index].image,
                            postList[index].name,
                            postList[index].plant,
                            postList[index].color,
                          postList[index].inThe,
                            postList[index].harvest,
                            postList[index].family

                        );
                      }),
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
                                    "Name",
                                    textAlign: TextAlign.center,

                                    style: new TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                )
                            )
                        ),
                        Expanded(
                            child: Container(
                                width: double.infinity,
                                color: Colors.white,
                                child: Center(
                                  child: Text(
                                    "Plant Date",
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

                                color: Colors.white
                                ,
                                child: Center(
                                  child: Text(
                                    "In the Field",
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
                                    "Harvest",
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
                                    "Family",
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

                            )
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


                            )
                        ),

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

                            )
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


                            )
                        ),

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

  Widget listItemUi(String image, String name, String plantDate,Color   colors,
      String inTheField, String harvest, String family) {
    return new Container(
      decoration: BoxDecoration(border:Border.all(color:Colors.black),color:  colors) ,
      width: 140,
      child: Column(
        children: <Widget>[
          Container(

            padding: EdgeInsets.all(20),

            child: Image.asset(

               image,

            ),
          ),
          Expanded(
            child: Center(
              child: new Text(
                name,
                style: new TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: new Text(
                plantDate,
                style: new TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: new Text(
                inTheField,
                style: new TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: new Text(
                harvest,
                style: new TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: new Text(
                family,
                style: new TextStyle(
                  fontSize: 18,
                  color: Colors.black,
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
