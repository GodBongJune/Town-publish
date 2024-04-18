import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';
import 'package:town/utils/custom_util.dart';

class ContentDetailPageBody extends StatefulWidget {
  const ContentDetailPageBody({super.key});

  @override
  State<ContentDetailPageBody> createState() => _ContentDetailPageBodyState();
}

class _ContentDetailPageBodyState extends State<ContentDetailPageBody> {
  bool bookmark = false;
  bool like = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //날짜
                    Text(
                      "2024.03.07",
                      style: TextStyle(
                        color: kC8Color,
                        fontSize: size13,
                      ),
                    ),
                    //글 제목 (북마크,수정)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            "테스트 제목입니다테스트 ",
                            style: TextStyle(
                              color: k3DColor,
                              fontSize: size18,
                            ),
                            maxLines: null,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              bookmark = !bookmark;
                            });
                          },
                          child: Icon(
                            bookmark
                                ? CupertinoIcons.bookmark_fill
                                : CupertinoIcons.bookmark,
                            color: bookmark ? kFFColor : k3DColor,
                          ),
                        ),
                        SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              barrierDismissible: true,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5),
                                    ),
                                  ),
                                  content: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        InkWell(
                                            onTap: () {},
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.report_gmailerrorred,
                                                  size: 40,
                                                ),
                                                Text(
                                                  "신고하기",
                                                  style: TextStyle(
                                                    color: k3DColor,
                                                    fontSize: size15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            )),
                                        Spacer(),
                                        InkWell(
                                            onTap: () {},
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  CupertinoIcons.nosign,
                                                  size: 40,
                                                ),
                                                Text(
                                                  "차단하기",
                                                  style: TextStyle(
                                                    color: k3DColor,
                                                    fontSize: size15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Icon(Icons.menu),
                        )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Divider(thickness: 1, color: kEEColor),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    //글내용
                    Text(
                      "대한민국의 경제질서는 개인과 기업의 경제상의 자유와 창의를 존중함을 기본으로 한다. 선거에 관한 경비는 법률이 정하는 경우를 제외하고는 정당 또는 후보자에게 부담시킬 수 없다."
                      "모든 국민은 근로의 권리를 가진다. 국가는 사회적·경제적 방법으로 근로자의 고용의 증진과 적정임금의 보장에 노력하여야 하며, 법률이 정하는 바에 의하여 최저임금제를 시행하여야 한다."
                      "대통령후보자가 1인일 때에는 그 득표수가 선거권자 총수의 3분의 1 이상이 아니면 대통령으로 당선될 수 없다. 모든 국민은 건강하고 쾌적한 환경에서 생활할 권리를 가지며, 국가와 국민은 환경보전을 위하여 노력하여야 한다.",
                      style: TextStyle(
                        color: k76Color,
                        fontSize: size15,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Divider(thickness: 1, color: kEEColor),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Text(
                      "댓글 2",
                      style: TextStyle(
                        color: k3DColor,
                        fontSize: size15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Text(
                      "김철수 님",
                      style: TextStyle(
                        color: k3DColor,
                        fontSize: size15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Text(
                      "댓글 내용 입니다.",
                      style: TextStyle(
                        color: k76Color,
                        fontSize: size15,
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005),
                    Row(
                      children: [
                        Text(
                          "2024.02.11 13:41",
                          style: TextStyle(
                            color: k76Color,
                            fontSize: size15,
                          ),
                        ),
                        SizedBox(width: 10),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "답글쓰기",
                            style: TextStyle(
                              color: k3DColor,
                              fontSize: size13,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        //댓글 폼필드
        Column(
          children: [
            Divider(thickness: 1, color: kEEColor),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        like = !like;
                      });
                    },
                    child: Icon(
                      like ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                      color: like ? Colors.red : k3DColor,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(decorationThickness: 0),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: kEEColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: kEEColor),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 0.04,
                      decoration: BoxDecoration(
                        color: k3DColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "등록",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
