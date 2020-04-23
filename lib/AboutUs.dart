import 'package:flutter/material.dart';
import  'translations_delegate_base.dart';


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
              title:   Text(TranslationBase.of(context).txtAbout ,style: new TextStyle(color: Colors.white), ),

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


                    TranslationBase.of(context).who,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(TranslationBase.of(context).about_us,
                    textAlign: TextAlign.center,),

                ),

                Padding(
                  padding: const EdgeInsets.all(  8.0),
                  child: Text(


                    TranslationBase.of(context).mission,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                     child: Text(TranslationBase.of(context).Mission,
                     textAlign: TextAlign.center,),

                ),
                Padding(
                  padding: const EdgeInsets.all(  8.0),
                  child: Text(


                    TranslationBase.of(context).vission,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                    child: Text(TranslationBase.of(context).Vission,
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
