import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';
import 'package:town/utils/custom_util.dart';

class JoinPageFormfield extends StatelessWidget {
  const JoinPageFormfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
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
                customTextFormField(
                  context: context,
                  hintText: "이름을 입력해주세요",
                  obscureText: false,
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
                customTextFormField(
                  context: context,
                  hintText: "이메일을 입력해주세요",
                  obscureText: false,
                  suffix: "인증하기",
                  suffixOnTap: () {},
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
                customTextFormField(
                  context: context,
                  hintText: "비밀번호를 입력해주세요",
                  obscureText: true,
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            //비밀번호 재입력
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "비밀번호 확인",
                  style: TextStyle(
                    color: k3DColor,
                    fontSize: size15,
                  ),
                ),
                SizedBox(height: 5),
                customTextFormField(
                  context: context,
                  hintText: "비밀번호를 다시 입력해주세요",
                  obscureText: true,
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
                customTextFormField(
                  context: context,
                  hintText: "휴대폰번호를 입력해주세요",
                  obscureText: false,
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            //회원가입 버튼
            basicButton(
              context: context,
              onTap: () {
                Navigator.of(context).pop();
              },
              buttonColor: k3DColor,
              textColor: Colors.white,
              text: "회원가입하기",
            ),
          ],
        ),
      ),
    );
  }
}
