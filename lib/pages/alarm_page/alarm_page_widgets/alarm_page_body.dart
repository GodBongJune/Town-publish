import 'package:flutter/material.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';

class AlarmPageBody extends StatelessWidget {
  const AlarmPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> alarmList = [
      {
        "title": "[중고거래] 내가 쓴글에 댓글이 달렸습니다.",
        "time": "2023.02.11",
      },
      {
        "title":
            "[공지사항] 나눔 프리마켓 관련 공지사항입니다.[공지사항] 나눔 프리마켓 관련 공지사항입니다.[공지사항] 나눔 프리마켓 관련 공지사항입니다.[공지사항] 나눔 프리마켓 관련 공지사항입니다.[공지사항] 나눔 프리마켓 관련 공지사항입니다.",
        "time": "2023.04.11",
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        itemCount: alarmList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  alarmList[index]["title"],
                  style: TextStyle(
                    color: k3DColor,
                    fontSize: size15,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text(
                  alarmList[index]["time"],
                  style: TextStyle(
                    color: k9DColor,
                    fontSize: size13,
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) =>
            Divider(thickness: 1, color: kEEColor),
      ),
    );
  }
}
