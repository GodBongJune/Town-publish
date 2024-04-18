import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/pages/content/content_page/content_page_widgets/content_page_body.dart';
import 'package:town/pages/content/content_write_page/content_write_page.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("게시판"),
      ),
      body: ContentPageBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: k3DColor,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ContentWritePage(),
            ),
          );
        },
        child: Icon(
          CupertinoIcons.plus,
          color: Colors.white,
        ),
      ),
    );
  }
}
