import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';
import 'package:town/pages/auth_and_find/find_email_page/find_email_page.dart';
import 'package:town/pages/auth_and_find/join_page/join_page.dart';
import 'package:town/utils/custom_util.dart';

class LoginPageBody extends StatefulWidget {
  const LoginPageBody({super.key});

  @override
  State<LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  bool idSave = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          SvgPicture.asset("assets/logo/logo.svg"),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "이메일 주소",
                style: TextStyle(
                  color: k3DColor,
                  fontSize: size15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              customTextFormField(
                context: context,
                hintText: "이메일을 입력해주세요",
                obscureText: false,
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "비밀번호",
                style: TextStyle(
                  color: k3DColor,
                  fontSize: size15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              customTextFormField(
                context: context,
                hintText: "비밀번호를 입력해주세요",
                obscureText: true,
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          InkWell(
            onTap: () {
              setState(() {
                idSave = !idSave;
              });
            },
            child: Row(
              children: [
                idSave
                    ? Icon(Icons.check_box_outlined, color: k3DColor)
                    : Icon(Icons.check_box_outline_blank, color: k9DColor),
                Text(
                  "아이디 저장",
                  style: TextStyle(fontSize: size15),
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          basicButton(
            context: context,
            onTap: () {},
            buttonColor: k3DColor,
            textColor: Colors.white,
            text: "로그인",
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          basicButton(
            context: context,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => JoinPage(),
                ),
              );
            },
            buttonColor: Colors.white,
            textColor: k3DColor,
            text: "회원가입",
          ),
          Row(
            children: [
              Flexible(
                child: basicButton(
                  context: context,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => FindEmailPage(),
                      ),
                    );
                  },
                  buttonColor: Colors.transparent,
                  textColor: k3DColor,
                  text: "이메일 찾기",
                ),
              ),
              Flexible(
                child: basicButton(
                  context: context,
                  onTap: () {},
                  buttonColor: Colors.transparent,
                  textColor: k3DColor,
                  text: "비밀번호 찾기",
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Row(
            children: [
              Expanded(child: Divider(color: kC8Color, thickness: 1)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "간편로그인",
                  style: TextStyle(
                    color: kC8Color,
                    fontSize: size15,
                  ),
                ),
              ),
              Expanded(child: Divider(color: kC8Color, thickness: 1)),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: SvgPicture.asset("assets/logo/google.svg"),
              ),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset("assets/logo/naver.svg"),
              ),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset("assets/logo/kakao.svg"),
              ),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset("assets/logo/apple.svg"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
