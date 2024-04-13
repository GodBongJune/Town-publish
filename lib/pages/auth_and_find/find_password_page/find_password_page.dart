import 'package:flutter/material.dart';
import 'package:town/pages/auth_and_find/find_password_page/find_password_page_widgets/find_password_page_body.dart';

class FindPasswordPage extends StatelessWidget {
  const FindPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FindPasswordPageBody(),
    );
  }
}
