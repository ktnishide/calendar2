/*Teste do calendario
https://pub.dev/packages/flutter_calendar
*/
import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';

class FlutterCalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter_Calendar"),
      ),
      body: Center(
        child: Calendar(
          showCalendarPickerIcon: true,
            showTodayAction: true,
            isExpandable: true,
        ),
      ),
    );
  }
}

