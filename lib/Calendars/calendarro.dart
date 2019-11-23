/*Teste do calendario
* https://flutterawesome.com/calendar-widget-library-for-flutter-apps/
*/

import 'package:calendarro/calendarro.dart';
import 'package:calendarro/date_utils.dart';
import 'package:flutter/material.dart';

class CalendarroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("calendarro"),
      ),
      body: Center(
        child: Calendarro(
          displayMode: DisplayMode.MONTHS,
          selectionMode: SelectionMode.MULTI,
          startDate: DateUtils.getFirstDayOfCurrentMonth(),
          endDate: DateUtils.getLastDayOfCurrentMonth(),
          selectedDates: [DateTime(2019, 11, 22), DateTime(2019, 11, 25)],
        ),
      ),
    );
  }
}

