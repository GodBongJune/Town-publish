import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';

class AlarmSettingPage extends StatefulWidget {
  const AlarmSettingPage({super.key});

  @override
  State<AlarmSettingPage> createState() => _AlarmSettingPageState();
}

class _AlarmSettingPageState extends State<AlarmSettingPage> {
  bool alarm1 = false;
  bool alarm2 = false;
  bool alarm3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("설정"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "알림 설정",
                  style: TextStyle(
                    color: k3DColor,
                    fontSize: size15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "일정 알림",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "일정관련 알림을 알려드립니다.",
                          style: TextStyle(
                            color: k9DColor,
                            fontSize: size13,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    CupertinoSwitch(
                      value: alarm1,
                      onChanged: (bool value) {
                        setState(() {
                          alarm1 = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(thickness: 1, color: kEEColor),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "공지사항 알림",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "공지사항관련 알림을 알려드립니다.",
                          style: TextStyle(
                            color: k9DColor,
                            fontSize: size13,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    CupertinoSwitch(
                      value: alarm2,
                      onChanged: (bool value) {
                        setState(() {
                          alarm2 = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(thickness: 1, color: kEEColor),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "내가 쓴글 알림",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "내가 쓴 글에 관한 알림을 알려드립니다.",
                          style: TextStyle(
                            color: k9DColor,
                            fontSize: size13,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    CupertinoSwitch(
                      value: alarm3,
                      onChanged: (bool value) {
                        setState(() {
                          alarm3 = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(thickness: 1, color: kEEColor),
        ],
      ),
    );
  }
}
