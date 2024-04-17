import 'package:flutter/material.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';
import 'package:town/pages/my_info_change/my_info_change_widgets/my_info_change_password.dart';
import 'package:town/utils/custom_util.dart';

class MyInfoChangeBody extends StatelessWidget {
  const MyInfoChangeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          //이름
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "이름",
                style: TextStyle(
                  color: k3DColor,
                  fontSize: size15,
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  border: Border.all(color: kEEColor),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "최봉준",
                      style: TextStyle(
                        color: k9DColor,
                        fontSize: size15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          //휴대전화
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "휴대폰 번호",
                style: TextStyle(
                  color: k3DColor,
                  fontSize: size15,
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  border: Border.all(color: kEEColor),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "010-0000-0000",
                      style: TextStyle(
                        color: k9DColor,
                        fontSize: size15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          //이메일
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "이메일",
                style: TextStyle(
                  color: k3DColor,
                  fontSize: size15,
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  border: Border.all(color: kEEColor),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "aaa@aaa.com",
                      style: TextStyle(
                        color: k9DColor,
                        fontSize: size15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          //비밀번호
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "비밀번호",
                style: TextStyle(
                  color: k3DColor,
                  fontSize: size15,
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  border: Border.all(color: kEEColor),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Text(
                          "********",
                          style: TextStyle(
                            color: k9DColor,
                            fontSize: size15,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MyInfoChangePassword(),
                              ),
                            );
                          },
                          child: Text(
                            "변경",
                            style: TextStyle(
                              color: k3DColor,
                              fontSize: size15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
