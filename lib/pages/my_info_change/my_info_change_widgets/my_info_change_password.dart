import 'package:flutter/material.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';
import 'package:town/utils/custom_util.dart';

class MyInfoChangePassword extends StatelessWidget {
  const MyInfoChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("내정보"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
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
                  hintText: "대문자, 소문자, 숫자, 특수문자를 포함한 8글자 이상",
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
                  "비밀번호 재확인",
                  style: TextStyle(
                    color: k3DColor,
                    fontSize: size15,
                  ),
                ),
                SizedBox(height: 5),
                customTextFormField(
                  context: context,
                  hintText: "비밀번호를 일치하게 작성해주세요",
                  obscureText: true,
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Text(
              "비밀번호가 일치하지 않습니다.",
              style: TextStyle(
                color: Colors.red,
                fontSize: size13,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            basicButton(
              context: context,
              onTap: () {
                Navigator.of(context).pop();
                customSnackbar(context, "비밀번호 변경이 완료되었습니다.");
              },
              buttonColor: k3DColor,
              textColor: Colors.white,
              text: "비밀번호 변경",
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            basicButton(
              context: context,
              onTap: () {
                Navigator.of(context).pop();
              },
              buttonColor: Colors.white,
              textColor: k3DColor,
              text: "취소",
            ),
          ],
        ),
      ),
    );
  }
}
