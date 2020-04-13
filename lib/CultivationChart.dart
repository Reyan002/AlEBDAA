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
    postList.add(new Items("asset/images/contact.png", "name", "plant", "inThe",
        "harvest", "family"));
    postList.add(new Items("asset/images/contact.png", "name", "plant", "inThe",
        "harvest", "family"));
    postList.add(new Items("asset/images/contact.png", "name", "plant", "inThe",
        "harvest", "family"));
    postList.add(new Items("asset/images/contact.png", "name", "plant", "inThe",
        "harvest", "family"));
    postList.add(new Items("asset/images/contact.png", "name", "plant", "inThe",
        "harvest", "family"));
    postList.add(new Items("asset/images/contact.png", "name", "plant", "inThe",
        "harvest", "family"));
    postList.add(new Items("asset/images/contact.png", "name", "plant", "inThe",
        "harvest", "family"));
    postList.add(new Items("asset/images/contact.png", "name", "plant", "inThe",
        "harvest", "family"));
    postList.add(new Items("asset/images/contact.png", "name", "plant", "inThe",
        "harvest", "family"));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("Cultivation Chart"),
            backgroundColor: Colors.orange),
        body: new Container(
          child: postList.length == 0
              ? new Text("No Post Is Available")
              : new ListView.builder(
                  physics: PageScrollPhysics(),
                  itemCount: postList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return listItemUi(
                        postList[index].image,
                        postList[index].name,
                        postList[index].plant,
                        postList[index].inThe,
                        postList[index].harvest,
                        postList[index].family);
                  }),
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
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            height: 150,
            width: 160,
          ),
          Expanded(
            child: new Text(
              name,
              style: new TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: new Text(
              plantDate,
              style: new TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: new Text(
              inTheField,
              style: new TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: new Text(
              harvest,
              style: new TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: new Text(
              family,
              style: new TextStyle(
                fontSize: 24,
                color: Colors.black,
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
