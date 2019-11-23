/*Testes de calendarios*/

import 'package:calendar2/Calendars/calendarro.dart';
import 'package:calendar2/MyHomePage.dart';
import 'package:flutter/material.dart';

import 'Calendars/flutter_calendar.dart';
import 'Calendars/date_range_picker.dart';
import 'Calendars/flutter_calendar_carousel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/Calendarro': (context) => CalendarroPage(),
        '/flutter_calendar': (context) => FlutterCalendarPage(),
        '/date_range_picker': (context) => DateRangePickerPage(),
        '/flutter_calendar_carousel': (context) => FlutterCalendarCarouselPage(),

      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: MyHomePage(),
    );
  }
}
