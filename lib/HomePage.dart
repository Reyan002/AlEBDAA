import 'package:flutter/material.dart';
import  'scope_model_wrapper.dart';
import  'translations_delegate_base.dart';
 import 'package:scoped_model/scoped_model.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [new Image.asset("asset/images/language.jpg")]),
        ),
      )),
      bottomSheet: ScopedModelDescendant<AppModel>(
          builder: (context, child, model) => Padding(
            padding: EdgeInsets.all(10),
            child: Row(

              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      onPressed: () {

                        model.changeDirection();
                      },
                      height: 60.0,
                      color: Colors.orange[500],
                      child: new Text(
                        TranslationBase.of(context).btna,
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      onPressed: () {
                        model.changeDirectionTOenglish();
                      },
                      height: 60.0,
                      color: Colors.black87,
                      child: new Text(
                        TranslationBase.of(context).btne,
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ))
    );
  }

  void arabic() {}
}
