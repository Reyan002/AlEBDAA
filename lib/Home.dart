import 'package:flutter/material.dart';
import 'package:flutterappalebdaa/HomePage.dart';
import 'AboutUs.dart';
import 'Listing.dart';
import 'Videos.dart';
import 'ContactUs.dart';
import 'HomePage.dart';


class Home extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Home> {
  int _selectedTabIndex = 0;
  final List<Widget> children=[
HomePage(),
     AboutUs(),
    Listing(),
    Videos(),
    ContactUs()

  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//          title: Text("Home"), backgroundColor: Colors.orange ),


    body: children[_selectedTabIndex],
      bottomNavigationBar: BottomNavigationBar(


        currentIndex: _selectedTabIndex,
        onTap: onTapBar,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.orange,
        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home,), title: Text("Home"), ),
          BottomNavigationBarItem(


              icon: Icon(Icons.supervised_user_circle), title: Text("About Us")),

          BottomNavigationBarItem(
              icon: Icon(Icons.list), title: Text("Listing")),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library), title: Text("Video")),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone), title: Text("Contact")),
        ],
      ),
    );
  }


  void onTapBar(int value) {
    setState(() {
      _selectedTabIndex=value;
    });
  }

}


