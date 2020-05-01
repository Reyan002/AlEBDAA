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

  static const LatLng _center = const LatLng(25.223895, 55.466783);
  Set<Marker> markers = Set();

  @override
  void initState() {
    // TODO: implement initState
    markers.addAll([
      Marker(
          markerId: MarkerId('AL-EBDAA'),
          position: LatLng(25.223895, 55.466783)),


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
              zoom: 18,


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
              FlatButton.icon(onPressed: goToPhone, icon: Icon(Icons.phone,color: Colors.black,) , label: new Text( TranslationBase.of(context).number,style:
              TextStyle(color: Colors.black,fontSize: 18),)),
              //whatsApp
              FlatButton.icon(onPressed: gotoWhatsapp, icon: Icon(Icons.whatshot,color: Colors.black,) , label: new Text( TranslationBase.of(context).number,style:
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
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                   children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: () {gotoFacebook();},
                          child: Image(
                            width: 50,
                            height: 50,
                            image: AssetImage('asset/images/facebook.png'),
                            fit: BoxFit.cover,

                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(

                          onTap: () {gotoInstagram ();},
                          child: Image(


                            width: 50,
                            height: 50,
                            image: AssetImage('asset/images/instagram.png'),
                            fit: BoxFit.cover,

                          )
                      ),
                    ),
                  ],
                ),
              )

            ],
          ),


        ],
      )
    );
  }
  void _launchMapsUrl( ) async {
    final url = 'https://www.google.com/maps?q=Nabta+Agriclture+store+-+Dubai&ftid=0x3e5f6197b63d61ef:0xafe0091cc54e245f&hl=en-AE&gl=ae&shorturl=1';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  void goToPhone()async{

    const url = 'tel: +971505447799';
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
  gotoInstagram() async{

    var url='https://www.instagram.com/nabta.agri';
    await canLaunch(url)? launch(url):print("open whatsapp app link or do a snackbar with notification that there is no Instagram installed");

  }
  gotoFacebook() async{

    var url='https://www.facebook.com/nabtaagri-106242827497155';
    await canLaunch(url)? launch(url):print("open whatsapp app link or do a snackbar with notification that there is no Instagram installed");

  }
  gotoWhatsapp() async{
    var whatsappUrl ="whatsapp://send?phone=+971505447799";
    await canLaunch(whatsappUrl)? launch(whatsappUrl):print("open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");

  }
}
