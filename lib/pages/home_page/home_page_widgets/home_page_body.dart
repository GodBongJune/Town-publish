import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';
import 'package:town/pages/content_page/content_page.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  List<Map<String, dynamic>> homeList = [
    {
      "image": "assets/home/free.svg",
      "route": "",
    },
    {
      "image": "assets/home/life.svg",
      "route": "",
    },
    {
      "image": "assets/home/used.svg",
      "route": "",
    },
    {
      "image": "assets/home/group.svg",
      "route": "",
    },
    {
      "image": "assets/home/place.svg",
      "route": "",
    },
    {
      "image": "assets/home/news.svg",
      "route": "",
    },
    {
      "image": "assets/home/worker.svg",
      "route": "",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Container(
            height: MediaQuery.of(context).size.height * 0.18,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kFEColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        "공지사항",
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "더보기 >",
                          style: TextStyle(
                            color: k3DColor,
                            fontSize: size15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    "안녕하세요. 이것은 공지사항 제목입니다. 폰트는 프리텐다드 레귤러이고 폰트크기는 14px입니다.123123123123123123123141241412984",
                    style: TextStyle(
                      color: k3DColor,
                      fontSize: size15,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.8 / 1.5,
            ),
            itemCount: homeList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ContentPage(),
                    ),
                  );
                },
                child: SvgPicture.asset(
                  homeList[index]["image"],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
