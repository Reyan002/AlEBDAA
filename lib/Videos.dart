import 'package:flutter/material.dart';
import 'package:flutterappalebdaa/translations_delegate_base.dart';
import 'package:url_launcher/url_launcher.dart';


class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(TranslationBase.of(context).video),backgroundColor: Colors.orange
      ),
      body: GridView.count(crossAxisCount: 2,
        children: List.generate(10, (index){
          return GestureDetector(

              child:
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child:

                    Image.asset("asset/images/vido.jpg",fit: BoxFit.fill,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      color: Colors.black87,
                    )

                  ),

                  Center(
                    child: FlatButton.icon(onPressed: ( ){}, icon: Icon(Icons.play_circle_outline,size: 50,color: Colors.white,), label: Text("")),
                  )


                ],
              ),

            onTap: openLink,




          );
        })

      )
    );
  }

  void openLink() async{
    const url = 'http://alebdaainvestment.com/contact/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
