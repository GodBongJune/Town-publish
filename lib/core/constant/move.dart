import 'package:flutter/cupertino.dart';
import 'package:town/pages/auth/join_page/join_page_widgets/join_page_formfield.dart';

class Move {
  //회원가입 정보 입력
  static String joinPageFormfield = "/joinPageFormField";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    //회원가입 정보 입력
    Move.joinPageFormfield: (context) => JoinPageFormfield(),
  };
}
