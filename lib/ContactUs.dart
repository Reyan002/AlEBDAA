import 'package:flutter/material.dart';
class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Contact Us"),backgroundColor: Colors.orange
      ),
      body: new Center(
        child: new Text("This is Contact Us Page"),
      ),
    );
  }
}
