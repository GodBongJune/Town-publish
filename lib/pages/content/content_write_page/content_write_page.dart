import 'package:flutter/material.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';
import 'package:town/utils/custom_util.dart';

class ContentPageWrite extends StatelessWidget {
  const ContentPageWrite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("글 쓰기"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  TextFormField(
                    style: TextStyle(decorationThickness: 0),
                    decoration: InputDecoration(
                      hintText: "제목",
                      hintStyle: TextStyle(
                        color: kC8Color,
                        fontSize: size15,
                      ),
                      border: InputBorder.none,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kE8Color),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kE8Color),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: TextFormField(
                        style: TextStyle(decorationThickness: 0),
                        decoration: InputDecoration(
                          hintText: "내용을 입력하세요.",
                          hintStyle: TextStyle(
                            color: kC8Color,
                            fontSize: size15,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.image_outlined,
                              size: 50,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: basicButton(
                            context: context,
                            onTap: () {},
                            buttonColor: k3DColor,
                            textColor: Colors.white,
                            text: "등록",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
