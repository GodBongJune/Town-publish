import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';
import 'package:town/utils/custom_util.dart';

class FindEmailSuccessPage extends StatelessWidget {
  const FindEmailSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Column(
                children: [
                  Spacer(),
                  Icon(
                    CupertinoIcons.checkmark_alt,
                    color: k3DColor,
                    size: 50,
                  ),
                  Text(
                    "입력해주신 고객님의 정보와\n일치하는 이메일 입니다.",
                    style: TextStyle(
                      color: k76Color,
                      fontSize: size20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Text(
                    "aaa@aaa.com",
                    style: TextStyle(
                      color: k3DColor,
                      fontSize: size18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  basicButton(
                    context: context,
                    onTap: () {},
                    buttonColor: Colors.white,
                    textColor: k3DColor,
                    text: "비밀번호 찾기",
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  basicButton(
                    context: context,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    buttonColor: k3DColor,
                    textColor: Colors.white,
                    text: "로그인",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
