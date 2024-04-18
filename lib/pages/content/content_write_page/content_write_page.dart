import 'package:flutter/material.dart';
import 'package:town/pages/content/content_write_page/content_write_page_widgets/content_write_page_body.dart';

class ContentWritePage extends StatelessWidget {
  const ContentWritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("글 쓰기"),
      ),
      body: ContentWritePageBody(),
    );
  }
}
