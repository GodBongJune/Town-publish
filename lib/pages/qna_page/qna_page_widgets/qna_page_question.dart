import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';
import 'package:town/utils/custom_util.dart';

class QnAPageQuestion extends StatefulWidget {
  final TabController tabController;

  const QnAPageQuestion({super.key, required this.tabController});

  @override
  State<QnAPageQuestion> createState() => _QnAPageQuestionState();
}

class _QnAPageQuestionState extends State<QnAPageQuestion> {
  //첨부할 이미지
  List<String> selectedFileNames = [];

  List<String> sendFile = [];
  void onSelectedFiles(List<String> newFileNames) {
    setState(() {
      sendFile = newFileNames;
    });
  }

  List<String> qnyTypeList = <String>[
    "거래문의",
    "이용문의",
    "결제/환불",
    "서비스 관련",
    "회원/계정",
    "운영정책",
    "기타",
  ];
  String qnaType = "거래문의";
  String getTypeCode(String typeInKorean) {
    switch (typeInKorean) {
      case "거래문의":
        return "TRADE";
      case "이용문의":
        return "USE";
      case "결제/환불":
        return "PAY_REFUND";
      case "서비스 관련":
        return "SERVICE";
      case "회원/계정":
        return "ACCOUNT";
      case "운영정책":
        return "SERVICE_ROLE";
      case "기타":
        return "OTHER";
      default:
        return "TRADE";
    }
  }

  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          //문의 유형
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: kEEColor),
              borderRadius: BorderRadius.circular(5),
            ),
            height: MediaQuery.of(context).size.height * 0.065,
            width: double.infinity,
            child: Center(
              child: DropdownButton(
                underline: Container(height: 1, color: Colors.transparent),
                isExpanded: true,
                value: qnaType,
                items: qnyTypeList.map((String item) {
                  return DropdownMenuItem<String>(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        "$item",
                        style: TextStyle(color: k3DColor, fontSize: size15),
                      ),
                    ),
                    value: item,
                  );
                }).toList(),
                style: TextStyle(color: k3DColor),
                onChanged: (dynamic value) {
                  setState(() {
                    qnaType = value;
                  });
                },
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          //문의 제목
          TextFormField(
            style: TextStyle(decorationThickness: 0),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "제목을 입력해주세요",
              hintStyle: TextStyle(
                color: kC8Color,
                fontSize: size15,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kE8Color),
                borderRadius: BorderRadius.circular(5),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kE8Color),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          //문의 내용
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: kEEColor),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TextFormField(
                maxLines: null,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "문의 내용을 입력해주세요",
                  hintStyle: TextStyle(
                    color: kC8Color,
                    fontSize: size15,
                    decorationThickness: 0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          //파일 첨부
          InkWell(
            onTap: () {
              pickImage();
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.065,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: kEEColor),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      "파일 첨부",
                      style: TextStyle(
                        color: k76Color,
                        fontSize: size15,
                      ),
                    ),
                    Spacer(),
                    Icon(CupertinoIcons.link, color: k76Color),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          //첨부된 파일 목록
          if (selectedFileNames.isNotEmpty)
            Wrap(
              runSpacing: 20,
              children: selectedFileNames.map((fileName) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Text(
                        fileName,
                        style: TextStyle(
                          color: k76Color,
                          fontSize: size15,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedFileNames.remove(fileName);
                        });
                      },
                      child: Icon(CupertinoIcons.xmark, color: k3DColor),
                    ),
                  ],
                );
              }).toList(),
            ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          //이용동의
          InkWell(
            onTap: () {
              setState(() {
                agree = !agree;
              });
            },
            child: Row(
              children: [
                Icon(
                  Icons.radio_button_checked,
                  color: agree ? k3DColor : kC8Color,
                ),
                SizedBox(width: 5),
                Text(
                  "[필수] 개인정보 수집 및 이용동의",
                  style: TextStyle(
                    color: k3DColor,
                    fontSize: size15,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          basicButton(
            context: context,
            onTap: () {
              widget.tabController.animateTo(1);
            },
            buttonColor: k3DColor,
            textColor: Colors.white,
            text: "문의하기",
          ),
        ],
      ),
    );
  }

  Future<void> pickImage() async {
    try {
      final ImagePicker _picker = ImagePicker();
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        String filePath = image.path;
        setState(() {
          selectedFileNames.add(filePath);
        });
        onSelectedFiles(selectedFileNames);
      }
    } catch (e) {
      print('ImagePicker error: $e');
    }
  }
}
