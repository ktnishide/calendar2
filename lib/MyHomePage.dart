import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("teste"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildFlatBtn(context, "Calendarro"),
            Divider(),
            buildFlatBtn(context, "flutter_calendar"),
            Divider(),
            buildFlatBtn(context, "date_range_picker"),
            Divider(),
            buildFlatBtn(context, "flutter_calendar_carousel"),
            Divider(),
          ],
        ),
      ),
    );
  }
}

Widget buildFlatBtn(BuildContext context, String text) {
  return FlatButton(
    child: Text(text),
      onPressed: (){
         Navigator.pushNamed(
           context,
           '/'+text,
         );
      },
  );
}
