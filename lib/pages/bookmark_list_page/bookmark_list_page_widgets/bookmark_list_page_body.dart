import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';

class BookmarkListPageBody extends StatefulWidget {
  const BookmarkListPageBody({super.key});

  @override
  State<BookmarkListPageBody> createState() => _BookmarkListPageBodyState();
}

class _BookmarkListPageBodyState extends State<BookmarkListPageBody> {
  List<Map<String, dynamic>> bookmarkList = [
    {
      "title": "액자나눔액자나눔액자나눔액자나눔액자나눔액자나눔액자나눔액자나눔액자나눔액자나눔액자나눔액자나눔액자나눔액자나눔액자나눔",
      "time": "2024.03.07",
      "bookmark": true,
    },
    {
      "title": "다이소에서 파는 물건들",
      "time": "2024.03.07",
      "bookmark": true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: bookmarkList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bookmarkList[index]["time"],
                        style: TextStyle(
                          color: kC8Color,
                          fontSize: size13,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        bookmarkList[index]["title"],
                        style: TextStyle(
                          color: k3DColor,
                          fontSize: size15,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      bookmarkList[index]['bookmark'] =
                          !bookmarkList[index]['bookmark'];
                    });
                  },
                  child: Icon(
                    bookmarkList[index]["bookmark"]
                        ? CupertinoIcons.bookmark_fill
                        : CupertinoIcons.bookmark,
                    color:
                        bookmarkList[index]["bookmark"] ? kFFColor : k3DColor,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
