import 'package:flutter/material.dart';
import 'package:town/pages/calendar_page/calendar_page_widgets/calendar_page_body.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CalendarPageBody(),
    );
  }
}
