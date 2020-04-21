import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(25.099230, 55.179760);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Contact Us"),backgroundColor: Colors.orange
      ),
      body:Stack(
        children: <Widget>[

          GoogleMap(

            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(

              target: _center,
              zoom: 11.0,
            ),
          ),
          Container(
            width: double.infinity,
            height: 250,
           color: Colors.black45,
          ),
          Column(


            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //phone
              FlatButton.icon(onPressed: goToPhone, icon: Icon(Icons.phone,color: Colors.black,) , label: new Text( "+971555551349",style:
              TextStyle(color: Colors.black,fontSize: 18),)),
              //whatsApp
              FlatButton.icon(onPressed: goToPhone, icon: Icon(Icons.whatshot,color: Colors.black,) , label: new Text( "+971555551349",style:
              TextStyle(color: Colors.black,fontSize: 18),)),

              //email
              FlatButton.icon(onPressed: goToPhone, icon: Icon(Icons.email,color: Colors.black,) , label: new Text( "azaeinvestment@gmail.com",style:
              TextStyle(color: Colors.black,fontSize: 18),)),
//website
              FlatButton.icon(onPressed: goToPhone, icon: Icon(Icons.web,color: Colors.black,) , label: new Text( "www.alebdaainvestment.com",style:
              TextStyle(color: Colors.black,fontSize: 18),)),
//location
              FlatButton.icon(onPressed: goToPhone, icon: Icon(Icons.place,color: Colors.black,) , label: new Text( "Nabta Agriculture Store, Dubai UAE",style:
              TextStyle(color: Colors.black,fontSize: 18),)),

            ],
          ),

        ],
      )
    );
  }

  void goToPhone()async{

    const url = 'tel: +971555551349';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
