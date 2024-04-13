import 'package:flutter/cupertino.dart';
import 'package:town/pages/auth_and_find/find_email_page/find_email_page_widgets/find_email_success_page.dart';
import 'package:town/pages/auth_and_find/join_page/join_page_widgets/join_page_formfield.dart';

class Move {
  //회원가입 정보입력 페이지
  static String joinPageFormfield = "/joinPageFormField";

  //이메일 찾기 성공 페이지
  static String findEmailSuccess = "/findEmailSuccess";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    //회원가입 정보입력 페이지
    Move.joinPageFormfield: (context) => JoinPageFormfield(),

    //이메일 찾기 성공 페이지
    Move.findEmailSuccess: (context) => FindEmailSuccessPage(),
  };
}
