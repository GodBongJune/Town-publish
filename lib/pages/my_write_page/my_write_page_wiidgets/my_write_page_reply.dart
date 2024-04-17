import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';

class MyWritePageReply extends StatelessWidget {
  const MyWritePageReply({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> contentList = [
      {
        "time": "2024.03.08",
        "title":
            "[부산 중구]한번도 안쓴 액자 나눔합니다.[부산 중구]한번도 안쓴 액자 나눔합니다.[부산 중구]한번도 안쓴 액자 나눔합니다.[부산 중구]한번도 안쓴 액자 나눔합니다.[부산 중구]한번도 안쓴 액자 나눔합니다.",
        "image": "assets/home/free.svg",
      },
      {
        "time": "2024.03.08",
        "title": "[서울역 근처] 유아 백팩 나눔",
        "image": "assets/home/used.svg",
      },
      {
        "time": "2024.03.08",
        "title": "[서울역 근처] 유아 백팩 나눔",
        "image": "assets/home/life.svg",
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: contentList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          contentList[index]["time"],
                          style: TextStyle(
                            color: kC8Color,
                            fontSize: size13,
                          ),
                        ),
                        Text(
                          contentList[index]["title"],
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size15,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.height * 0.07,
                      child: SvgPicture.asset(
                        contentList[index]["image"],
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
