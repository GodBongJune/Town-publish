import 'package:flutter/material.dart';
import 'package:town/pages/auth_and_find/join_page/join_page_widgets/join_page_body.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: JoinPageBody(),
    );
  }
}
