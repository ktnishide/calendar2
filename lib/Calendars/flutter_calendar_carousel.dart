/*Teste do calendario
https://pub.dev/packages/flutter_calendar_carousel

*/
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;

class FlutterCalendarCarouselPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter_Calendar_Carousel"),
      ),
      body: Center(
        child: CalendarCarousel<Event>(
          onDayPressed: (DateTime date, List<Event> events) {
//            this.setState(() => _currentDate = date);
          },
          weekendTextStyle: TextStyle(
          color: Colors.red,
          ),
          thisMonthDayBorderColor: Colors.grey,
    //      weekDays: null, /// for pass null when you do not want to render weekDays
    //      headerText: Container( /// Example for rendering custom header
    //        child: Text('Custom Header'),
    //      ),
          customDayBuilder: (   /// you can provide your own build function to make custom day containers
          bool isSelectable,
          int index,
          bool isSelectedDay,
          bool isToday,
          bool isPrevMonthDay,
          TextStyle textStyle,
          bool isNextMonthDay,
          bool isThisMonthDay,
          DateTime day,
          ) {
          /// If you return null, [CalendarCarousel] will build container for current [day] with default function.
          /// This way you can build custom containers for specific days only, leaving rest as default.

          // Example: every 15th of month, we have a flight, we can place an icon in the container like that:
          if (day.day == 15) {
          return Center(
          child: Icon(Icons.local_airport),
          );
          } else {
          return null;
          }
          },
        weekFormat: false,
//        markedDatesMap: _markedDateMap,
        height: 420.0,
//        selectedDateTime: _currentDate,
        daysHaveCircularBorder: false, /// null for not rendering any border, true for circular border, false for rectangular border
        ),
      ),
    );
  }

  void setState(DateTime Function() param0) {

  }
}

