import 'package:flutter/material.dart';
import 'package:town/pages/auth_and_find/find_password_change_page/find_password_change_page_widgets/find_password_change_page_body.dart';

class FindPasswordChangePage extends StatelessWidget {
  const FindPasswordChangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FindPasswordChangePageBody(),
    );
  }
}
