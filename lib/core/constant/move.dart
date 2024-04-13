import 'package:flutter/cupertino.dart';
import 'package:town/pages/auth_and_find/find_email_page/find_email_page_widgets/find_email_success_page.dart';
import 'package:town/pages/auth_and_find/find_password_change_page/find_password_change_page.dart';
import 'package:town/pages/auth_and_find/find_password_page/find_password_page.dart';
import 'package:town/pages/auth_and_find/join_page/join_page_widgets/join_page_formfield.dart';

class Move {
  //회원가입 정보입력 페이지
  static String joinPageFormfield = "/joinPageFormField";

  //이메일 찾기 성공 페이지
  static String findEmailSuccess = "/findEmailSuccess";

  //비밀번호 찾기 페이지
  static String findPassword = "/findPassword";

  //비밀번호 찾고 변경하기 페이지
  static String findPasswordChange = "/findPasswrodChange";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    //회원가입 정보입력 페이지
    Move.joinPageFormfield: (context) => JoinPageFormfield(),

    //이메일 찾기 성공 페이지
    Move.findEmailSuccess: (context) => FindEmailSuccessPage(),

    //비밀번호 찾기 페이지
    Move.findPassword: (context) => FindPasswordPage(),

    //비밀번호 찾고 변경하기 페이지
    Move.findPasswordChange: (context) => FindPasswordChangePage(),
  };
}
