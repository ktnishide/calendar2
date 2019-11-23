/*Teste do calendario
https://pub.dev/packages/date_range_picker

*/
import 'package:flutter/material.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;

class DateRangePickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter_Calendar"),
      ),
      body: Center(
        child: MaterialButton(
            color: Colors.deepOrangeAccent,
            onPressed: () async {
              final List<DateTime> picked = await DateRagePicker.showDatePicker(
                  context: context,
                  initialFirstDate: new DateTime.now(),
                  initialLastDate: (new DateTime.now()).add(new Duration(days: 7)),
                  firstDate: new DateTime(2015),
                  lastDate: new DateTime(2020)
              );
              if (picked != null && picked.length == 2) {
                print(picked);
              }
            },
            child: new Text("Pick date range")
        )
      ),
    );
  }
}

