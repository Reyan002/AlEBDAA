import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.orange),
      home:  new Scaffold(

//        appBar: new AppBar(
//            title: new Text("About Us"),backgroundColor: Colors.orange
//        ),
//        body: new Center(
//          child: new Text("This is About Us Page"),
//        ),
      body: CustomScrollView(

        slivers: <Widget>[
          SliverAppBar(

            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(

              collapseMode: CollapseMode.parallax,
              title:   Text('About Us' ,style: new TextStyle(color: Colors.white), ),

              background: Image.asset(
                'asset/images/thr.jpg', // <===   Add your own image to assets or use a .network image instead.
                fit: BoxFit.cover,
              ),
            ),
          ),

          SliverFillRemaining(

            child:   SingleChildScrollView(
              child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(  8.0),
                  child: Text(


                    'Who We Are ?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Al-EBBDA AL-ZAHABI Investments is a company invests in many sectors (commercial, industrial, agriculture, education, petrol and gas, tourism) was established to support and develop SME businesses around UAE and Organic Guild is part of Al-EBBDA AL-ZAHABI, its created with the purpose of encouraging and developing the organic industry the UAE. Organic Guild is group of companies that are organic certified or related to it or have passion to it. The purpose of this group is to share information, cooperate in the business and participate in events and exhibition.',
                    textAlign: TextAlign.center,),

                ),

                Padding(
                  padding: const EdgeInsets.all(  8.0),
                  child: Text(


                    'Our Mission',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                     child: Text(' participate in growth of organic sector and encourage young farmers to invest in their farms as well as support traditional farmers to adopt new technology in farming. Also raise awareness of importance of organic industry to be available and spread widely among United Arab Emirates.',
                     textAlign: TextAlign.center,),

                ),
                Padding(
                  padding: const EdgeInsets.all(  8.0),
                  child: Text(


                    'Our Vision',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                    child: Text('develop agriculture sector and promote UAE to become on the top of organic industry and be market leader in GCC and middle-east. At same time continuing support to meet clients and business needs as they develop.',
                     textAlign: TextAlign.center,),

                ),
                SizedBox(height: 100,)
              ],
            ),
            ),
          )
        ],
      ),
      ) ,
    );
  }
}
