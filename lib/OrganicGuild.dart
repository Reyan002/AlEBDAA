import 'package:flutter/material.dart';
import 'package:flutterappalebdaa/translations_delegate_base.dart';
import 'package:url_launcher/url_launcher.dart';


class OrganicGuild extends StatefulWidget {
  @override
  _OrganicGuildState createState() => _OrganicGuildState();
}

class _OrganicGuildState extends State<OrganicGuild> {
  @override
  Widget build(BuildContext context) {
       return new Scaffold(
      appBar: new AppBar(
          title: new Text(TranslationBase.of(context).organic),backgroundColor: Colors.orange
      ),
      body:  Stack(

    children: <Widget>[

      Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: CircleAvatar(

            radius: 100.0,
            backgroundImage: AssetImage('asset/images/logoback.jpg'),
          ),
        ),
      ),


      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,

        children: <Widget>[


          ButtonTheme(

            minWidth: double.infinity,
            height: 50,

            child: new RaisedButton(

              child: new Text(TranslationBase.of(context).become, style: new TextStyle(fontSize: 20),),

              textColor: Colors.black,

              color: Colors.orange,
              onPressed: mailTo,

            ),
          ),
          FlatButton.icon(onPressed: goToPhone, icon: Icon(Icons.phone, ) , label: new Text( "+971555551349",style:
          TextStyle(  fontSize: 18),)),
          FlatButton.icon(onPressed: mailTo, icon: Icon(Icons.email, ) , label: new Text( "azaeinvestment@gmail.com",style:
          TextStyle(  fontSize:18),))


        ],
      ),
    ],
      )
    );
  }

  void validateAndSubmit() {
  }

  void goToPhone() async{

    const url = 'tel: +971555551349';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  void mailTo() async{

    const url = 'mailto:azaeinvestment@gmail.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
