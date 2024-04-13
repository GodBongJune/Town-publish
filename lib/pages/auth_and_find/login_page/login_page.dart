import 'package:flutter/material.dart';
import 'package:town/pages/auth_and_find/login_page/login_page_widgets/login_page_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPageBody(),
    );
  }
}
