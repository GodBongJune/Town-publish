import 'package:flutter/material.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/pages/my_page/my_page_widgets/my_page_body.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: kFEColor,
        child: MyPageBody(),
      ),
    );
  }
}
