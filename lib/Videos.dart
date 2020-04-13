import 'package:flutter/material.dart';
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
        title: new Text("Videos"),backgroundColor: Colors.orange
      ),
      body: GridView.count(crossAxisCount: 2,
        children: List.generate(10, (index){
          return GestureDetector(

              child:
              Padding(
                padding: const EdgeInsets.all(5),
                child:

                Image.asset("asset/images/vido.jpg",fit: BoxFit.fill,),
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
