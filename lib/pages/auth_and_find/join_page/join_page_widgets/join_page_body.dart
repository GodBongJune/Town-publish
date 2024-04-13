import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/move.dart';
import 'package:town/core/constant/size.dart';
import 'package:town/utils/custom_util.dart';

class JoinPageBody extends StatefulWidget {
  const JoinPageBody({super.key});

  @override
  State<JoinPageBody> createState() => _JoinPageBodyState();
}

class _JoinPageBodyState extends State<JoinPageBody> {
  bool agree1 = false;
  bool agree2 = false;
  bool agree3 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "엠바스 서비스 이용약관에\n동의 해 주세요.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  "약관동의",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                //약관동의 버튼
                Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              agree1 = !agree1;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                color: agree1 ? k27CColor : k9CColor,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "[필수] 개인정보 수집 동의",
                                style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "보기",
                            style: TextStyle(
                              color: k9DColor,
                              fontSize: size15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              agree2 = !agree2;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                color: agree2 ? k27CColor : k9CColor,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "[필수] 서비스 이용약관 동의",
                                style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "보기",
                            style: TextStyle(
                              color: k9DColor,
                              fontSize: size15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              agree3 = !agree3;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                color: agree3 ? k27CColor : k9CColor,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "[선택] 마케팅 정보 수신 동의",
                                style: TextStyle(
                                  color: k3DColor,
                                  fontSize: size15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "보기",
                            style: TextStyle(
                              color: k9DColor,
                              fontSize: size15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                //다음버튼
                basicButton(
                  context: context,
                  onTap: () {
                    if (!(agree1 && agree2)) {
                      customSnackbar(context, "필수 약관에 동의 해 주세요.");
                      return;
                    }
                    Navigator.of(context)
                        .popAndPushNamed(Move.joinPageFormfield);
                  },
                  buttonColor: k3DColor,
                  textColor: Colors.white,
                  text: "다음",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
