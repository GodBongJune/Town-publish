import 'package:flutter/material.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';
import 'package:town/pages/my_write_page/my_write_page_wiidgets/my_write_page_content.dart';
import 'package:town/pages/my_write_page/my_write_page_wiidgets/my_write_page_reply.dart';

const List<Tab> tabs = <Tab>[
  Tab(text: "게시글"),
  Tab(text: "댓글"),
];

class MyWritePage extends StatefulWidget {
  final int tabIndex;

  const MyWritePage({super.key, this.tabIndex = 0});

  @override
  State<MyWritePage> createState() => _MyWritePageState();
}

class _MyWritePageState extends State<MyWritePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabController.animateTo(widget.tabIndex);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("내가 쓴 글"),
        bottom: TabBar(
          controller: _tabController,
          labelStyle: TextStyle(
            color: k3DColor,
            fontSize: size15,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelColor: kC8Color,
          unselectedLabelStyle: TextStyle(
            color: kC8Color,
            fontSize: size15,
            fontWeight: FontWeight.bold,
          ),
          tabs: tabs,
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          MyWritePageContent(),
          MyWritePageReply(),
        ],
      ),
    );
  }
}
