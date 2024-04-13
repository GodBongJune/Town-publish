import 'package:flutter/material.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/move.dart';
import 'package:town/core/constant/size.dart';
import 'package:town/utils/custom_util.dart';

class FindPasswordPageBody extends StatelessWidget {
  const FindPasswordPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              children: [
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
                    customTextFormField(
                      context: context,
                      hintText: "이메일을 입력해주세요",
                      obscureText: false,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
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
                    customTextFormField(
                      context: context,
                      hintText: "이름을 입력해주세요",
                      obscureText: false,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                //휴대전화
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "휴대폰번호",
                      style: TextStyle(
                        color: k3DColor,
                        fontSize: size15,
                      ),
                    ),
                    SizedBox(height: 5),
                    customTextFormField(
                      context: context,
                      hintText: "휴대폰번호를 입력해주세요",
                      obscureText: false,
                      suffix: "인증하기",
                      suffixOnTap: () {
                        customSnackbar(context, "인증번호를 요청했습니다.");
                      },
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                //인증번호
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "인증번호",
                      style: TextStyle(
                        color: k3DColor,
                        fontSize: size15,
                      ),
                    ),
                    SizedBox(height: 5),
                    customTextFormField(
                      context: context,
                      hintText: "인증번호를 입력해주세요",
                      obscureText: false,
                      suffix: "확인",
                      suffixOnTap: () {
                        customSnackbar(context, "인증번호를 확인완료.");
                      },
                    ),
                  ],
                ),
                Spacer(),
                basicButton(
                  context: context,
                  onTap: () {
                    Navigator.popAndPushNamed(context, Move.findPasswordChange);
                  },
                  buttonColor: k3DColor,
                  textColor: Colors.white,
                  text: "비밀번호 찾기",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
