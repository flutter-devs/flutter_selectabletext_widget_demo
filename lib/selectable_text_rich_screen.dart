
import 'package:flutter/material.dart';

class SelectableTextRichScreen extends StatefulWidget {
  @override
  _SelectableTextRichScreenState createState() => _SelectableTextRichScreenState();
}

class _SelectableTextRichScreenState extends State<SelectableTextRichScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Flutter SelectableText Widget Demo"),
      ),
      body: Center(
        child: SelectableText.rich(
          TextSpan(
            children: <TextSpan>[
              TextSpan(text: 'Flutter', style: TextStyle(color: Colors.blue)),
              TextSpan(text: 'Devs', style: TextStyle(color: Colors.black)),
              TextSpan(text: '.com', style: TextStyle(color: Colors.red)),
            ],
          ),
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 48),
          textAlign: TextAlign.center,
          onTap: () => print('Tapped'),
          toolbarOptions: ToolbarOptions(copy: true, selectAll: false),
          showCursor: true,
          cursorWidth: 2,
          cursorColor: Colors.black,
          cursorRadius: Radius.circular(5),
        ),
      )
    );
  }
}
