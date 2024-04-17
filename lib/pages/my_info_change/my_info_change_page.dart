import 'package:flutter/material.dart';
import 'package:town/pages/my_info_change/my_info_change_widgets/my_info_change_body.dart';

class MyInfoChangePage extends StatelessWidget {
  const MyInfoChangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("내정보"),
      ),
      body: MyInfoChangeBody(),
    );
  }
}
