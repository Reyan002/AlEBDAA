import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterappalebdaa/translations_delegate_base.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(25.099230, 55.179760);
  Set<Marker> markers = Set();

  @override
  void initState() {
    // TODO: implement initState
    markers.addAll([
      Marker(
          markerId: MarkerId('AL-EBDAA'),
          position: LatLng(25.099230,55.179760)),

    ]);
    super.initState();
  }
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(TranslationBase.of(context).contact),backgroundColor: Colors.orange
      ),
      body:Stack(
        children: <Widget>[

          GoogleMap(

            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(

              target: _center,
              zoom: 14,


            ),

            markers: markers,
          ),
          Container(
            width: double.infinity,
            height: 250,
           color: Colors.black26,
          ),
          Column(


            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //phone
              FlatButton.icon(onPressed: goToPhone, icon: Icon(Icons.phone,color: Colors.black,) , label: new Text( "+971555551349",style:
              TextStyle(color: Colors.black,fontSize: 18),)),
              //whatsApp
              FlatButton.icon(onPressed: gotoWhatsapp, icon: Icon(Icons.whatshot,color: Colors.black,) , label: new Text( "+971555551349",style:
              TextStyle(color: Colors.black,fontSize: 18),)),

              //email
              FlatButton.icon(onPressed: mailTo, icon: Icon(Icons.email,color: Colors.black,) , label: new Text( "azaeinvestment@gmail.com",style:
              TextStyle(color: Colors.black,fontSize: 18),)),
//website
              FlatButton.icon(onPressed: _launchURL, icon: Icon(Icons.web,color: Colors.black,) , label: new Text( "www.alebdaainvestment.com",style:
              TextStyle(color: Colors.black,fontSize: 18),)),
//location
              FlatButton.icon(onPressed:_launchMapsUrl, icon: Icon(Icons.place,color: Colors.black,) , label: new Text( "Nabta Agriculture Store, Dubai UAE",maxLines: 1,style:
              TextStyle(color: Colors.black,fontSize: 18),)),

            ],
          ),

        ],
      )
    );
  }
  void _launchMapsUrl( ) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=25.099230,55.179760';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  void goToPhone()async{

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
  _launchURL() async {
    const url = 'http://alebdaainvestment.com/contact/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  gotoWhatsapp() async{
    var whatsappUrl ="whatsapp://send?phone=+971555551349";
    await canLaunch(whatsappUrl)? launch(whatsappUrl):print("open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");

  }
}
