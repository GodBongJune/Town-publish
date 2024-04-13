import 'package:flutter/material.dart';
import 'package:town/pages/auth_and_find/find_email_page/find_email_page_widgets/find_email_page_body.dart';

class FindEmailPage extends StatelessWidget {
  const FindEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FindEmailPageBody(),
    );
  }
}
