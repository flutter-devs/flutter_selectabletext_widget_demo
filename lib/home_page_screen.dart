import 'package:flutter/material.dart';
import 'package:flutter_selectabletext_widget/selectable_text_rich_screen.dart';
import 'package:flutter_selectabletext_widget/selectable_text_screen.dart';



class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text("Flutter SelectableText Widget Demo"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                RaisedButton(
                  child: Text('Selectable Text',style: TextStyle(color: Colors.black),),
                  color: Colors.green[100],
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SelectableTextScreen()));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),
                ),
                SizedBox(height: 8,),
                RaisedButton(
                  child: Text('Selectable Text Rich',style: TextStyle(color: Colors.black),),
                  color: Colors.green[100],
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SelectableTextRichScreen()));
                    },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),

                ),
                SizedBox(height: 8,),

              ],
            ),
          )
      ), //center
    );
  }
}
