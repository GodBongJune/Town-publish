import 'package:flutter/material.dart';
import 'package:town/pages/content/content_detail_page/content_detail_page_widgets/content_detail_page_body.dart';

class ContentDetailPage extends StatelessWidget {
  const ContentDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ContentDetailPageBody(),
    );
  }
}
