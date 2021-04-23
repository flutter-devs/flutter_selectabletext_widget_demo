
import 'package:flutter/material.dart';

class SelectableTextScreen extends StatefulWidget {
  @override
  _SelectableTextScreenState createState() => _SelectableTextScreenState();
}

class _SelectableTextScreenState extends State<SelectableTextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Flutter SelectableText Widget Demo"),
      ),
      body: Center(
        child: SelectableText(
          "Flutter Tutorial by Flutter Dev's.com",
          style: TextStyle(color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 45
          ),
          textAlign: TextAlign.center,
          onTap: () => print('Tapped'),
          toolbarOptions: ToolbarOptions(copy: true, selectAll: true,),
          showCursor: true,
          cursorWidth: 2,
          cursorColor: Colors.red,
          cursorRadius: Radius.circular(5),

        ),
      ),
    );
  }
}
