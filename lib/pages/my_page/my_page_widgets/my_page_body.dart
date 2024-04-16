import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';

class MyPageBody extends StatelessWidget {
  const MyPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.13),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "최봉준 님",
                      style: TextStyle(
                        color: k3DColor,
                        fontSize: size20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: k9BColor),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "내정보 수정",
                              style: TextStyle(
                                color: k9BColor,
                                fontSize: size15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "게시물",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size15,
                          ),
                        ),
                        Text(
                          "1",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "댓글",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size15,
                          ),
                        ),
                        Text(
                          "12",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Divider(thickness: 1, color: kEEColor),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(CupertinoIcons.bookmark, color: k3DColor),
                        SizedBox(width: 10),
                        Text(
                          "저장한 목록",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(thickness: 1, color: kEEColor),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(CupertinoIcons.phone, color: k3DColor),
                        SizedBox(width: 10),
                        Text(
                          "고객센터",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(thickness: 1, color: kEEColor),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(CupertinoIcons.square_arrow_right,
                            color: k3DColor),
                        SizedBox(width: 10),
                        Text(
                          "로그아웃",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(thickness: 1, color: kEEColor),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
