import 'package:flutter/material.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';

class LaunchPageBody extends StatefulWidget {
  const LaunchPageBody({super.key});

  @override
  State<LaunchPageBody> createState() => _LaunchPageBodyState();
}

class _LaunchPageBodyState extends State<LaunchPageBody> {
  bool galleryAgree = false;
  bool pushAgree = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Text(
            "동네 앱 이용을 위해\n아래 접근 권한이 필요합니다.",
            style: TextStyle(
              color: k3DColor,
              fontSize: size15,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: kEEColor),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        galleryAgree = !galleryAgree;
                      });
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.radio_button_checked,
                          color: galleryAgree ? k3DColor : kD9Color,
                          size: 30,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "사진첩/갤러리 접근권한 (선택)",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  InkWell(
                    onTap: () {
                      setState(() {
                        pushAgree = !pushAgree;
                      });
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.radio_button_checked,
                          color: pushAgree ? k3DColor : kD9Color,
                          size: 30,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "푸시 알림 (선택)",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Text(
            "접근권한 변경 방법 안내",
            style: TextStyle(
              color: k3DColor,
              fontSize: size15,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Text(
            "휴대폰 설정 > 앱 또는 어플리케이션 > {=앱이름} > 권한에서 변경가능합니다.",
            style: TextStyle(
              color: k76Color,
              fontSize: size15,
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => LoginPage(),
              //   ),
              // );
            },
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.075,
              decoration: BoxDecoration(
                color: k3DColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "확인",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: size15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
