import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';

class CalendarPageBody extends StatefulWidget {
  const CalendarPageBody({super.key});

  @override
  State<CalendarPageBody> createState() => _CalendarPageBodyState();
}

class _CalendarPageBodyState extends State<CalendarPageBody> {
  List<Map<String, dynamic>> calendarList = [
    {
      "title":
          "제 13회 서울 나눔 프리마켓제 13회 서울 나눔 프리마켓제 13회 서울 나눔 프리마켓제 13회 서울 나눔 프리마켓제 13회 서울 나눔 프리마켓",
      "date": "2024.01.01",
      "time": "오전 10:00",
      "place":
          "홍대 앞 예술시장 10시~16시홍대 앞 예술시장 10시~16시홍대 앞 예술시장 10시~16시홍대 앞 예술시장 10시~16시홍대 앞 예술시장 10시~16시",
    },
    {
      "title": "제 13회 서울 나눔 프리마켓",
      "date": "2024.01.02",
      "time": "오전 10:00",
      "place": "홍대 앞 예술시장 10시~16시",
    },
  ];

  DateTime selectedDay = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
  DateTime focusedDay = DateTime.now();

  Map<DateTime, List<Map<String, dynamic>>> events = {};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                child: TableCalendar(
                  locale: "ko-KR",
                  calendarBuilders: CalendarBuilders(
                    dowBuilder: (context, day) {
                      switch (day.weekday) {
                        case 1:
                          return Center(
                            child: Text(
                              '월',
                              style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size15,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        case 2:
                          return Center(
                            child: Text(
                              '화',
                              style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size15,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        case 3:
                          return Center(
                            child: Text(
                              '수',
                              style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size15,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        case 4:
                          return Center(
                            child: Text(
                              '목',
                              style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size15,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        case 5:
                          return Center(
                            child: Text(
                              '금',
                              style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size15,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        case 6:
                          return Center(
                            child: Text(
                              '토',
                              style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size15,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        case 7:
                          return Center(
                            child: Text(
                              '일',
                              style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size15,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                      }
                    },
                    todayBuilder: (context, date, _) {
                      return Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: kEAColor,
                          ),
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: Text(
                              '${date.day}',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    selectedBuilder: (context, date, focusedDay) {
                      return Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: k96Color,
                          ),
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: Text(
                              '${date.day}',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  eventLoader: (day) {
                    return events[day] ?? [];
                  },
                  focusedDay: this.focusedDay,
                  firstDay: DateTime.now().subtract(Duration(days: 365)),
                  lastDay: DateTime.now().add(Duration(days: 365)),
                  onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
                    setState(() {
                      this.selectedDay = selectedDay;
                      this.focusedDay = focusedDay;
                    });
                  },
                  selectedDayPredicate: (DateTime day) {
                    return isSameDay(selectedDay, day);
                  },
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                  ),
                ),
              ),
            ),
          ],
        ),
        Divider(color: kEEColor),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            "이번달 일정",
            style: TextStyle(
                color: k3DColor, fontSize: size15, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Expanded(
          child: ListView.builder(
            itemCount: calendarList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        calendarList[index]["date"] ?? "언제",
                        style: TextStyle(
                          color: k9DColor,
                          fontSize: size13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: k3DColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    child: Text(
                                      calendarList[index]["title"] ?? "제목",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: size15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    calendarList[index]["time"] ?? "시간",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: size15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                calendarList[index]["place"] ?? "장소",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size15,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
