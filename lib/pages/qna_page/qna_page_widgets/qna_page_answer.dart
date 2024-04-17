import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';

class QnAPageAnswer extends StatefulWidget {
  const QnAPageAnswer({super.key});

  @override
  State<QnAPageAnswer> createState() => _QnAPageAnswerState();
}

class _QnAPageAnswerState extends State<QnAPageAnswer> {
  List<Map<String, dynamic>> qnaList = [
    {
      "qTitle": "문의내용 제목이 입력되는 곳입니다.문의내용 제목이 입력되는 곳입니다.",
      "qContent":
          "문의 제목을 클릭하면 보이는문의한 내용 입니다. 글자는 프리텐다드이고 Regular 굵기에 폰트 사이즈는 14px 로 작성하고 있습니다.내용이 길어진다면 이런 느낌으로 작성될 것입니다.단락을 띄웠을때는 이런 모양이 됩니다.이미치를 첨부하면 이렇게 보입니다..",
      "qTime": "2024.01.04",
      "qAnswer": "답변 대기",
    },
    {
      "qTitle": "문의내용 제목이 입력되는 곳입니다.",
      "qContent":
          "문의 제목을 클릭하면 보이는문의한 내용 입니다. 글자는 프리텐다드이고 Regular 굵기에 폰트 사이즈는 14px 로 작성하고 있습니다.내용이 길어진다면 이런 느낌으로 작성될 것입니다.단락을 띄웠을때는 이런 모양이 됩니다.이미치를 첨부하면 이렇게 보입니다..",
      "qTime": "2024.01.04",
      "qAnswer": "답변 완료",
    },
    {
      "qTitle": "문의내용 제목이 입력되는 곳입니다.",
      "qContent":
          "문의 제목을 클릭하면 보이는문의한 내용 입니다. 글자는 프리텐다드이고 Regular 굵기에 폰트 사이즈는 14px 로 작성하고 있습니다.내용이 길어진다면 이런 느낌으로 작성될 것입니다.단락을 띄웠을때는 이런 모양이 됩니다.이미치를 첨부하면 이렇게 보입니다..",
      "qTime": "2024.01.04",
      "qAnswer": "답변 대기",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: qnaList.length,
      itemBuilder: (context, index) {
        return ExpansionTile(
          title: Container(
            height: MediaQuery.of(context).size.height * 0.08,
            child: Row(
              children: [
                SizedBox(
                  width: 35,
                  height: 35,
                  child: SvgPicture.asset(
                    "assets/logo/q.svg",
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        qnaList[index]["qTitle"],
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size15,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        qnaList[index]["qTime"],
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          trailing: Text(
            qnaList[index]["qAnswer"],
            style: TextStyle(
              color: k3DColor,
              fontSize: size13,
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                qnaList[index]["qContent"],
                style: TextStyle(
                  color: k3DColor,
                  fontSize: size15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                color: kFAColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 35,
                        width: 35,
                        child: SvgPicture.asset("assets/logo/a.svg"),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "건의내용에 대한 답변내용이 작성되는 곳입니다."
                              "폰트는 프리텐다드 Regular이고 폰트 사이즈는"
                              "14px 입니다."
                              "내용이 길어지는 경우의 모습입니다."
                              "내용이 길어지는 경우의 모습입니다."
                              "내용이 길어지는 경우의 모습입니다.",
                              style: TextStyle(
                                color: k3DColor,
                                fontSize: size15,
                              ),
                              maxLines: null,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
