import 'package:flutter/material.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';
import 'package:town/pages/qna_page/qna_page_widgets/qna_page_answer.dart';
import 'package:town/pages/qna_page/qna_page_widgets/qna_page_question.dart';

const List<Tab> tabs = <Tab>[
  Tab(text: "문의하기"),
  Tab(text: "문의내역확인"),
];

class QnAPage extends StatefulWidget {
  final int tabIndex;

  const QnAPage({super.key, this.tabIndex = 0});

  @override
  State<QnAPage> createState() => _QnAPageState();
}

class _QnAPageState extends State<QnAPage> with SingleTickerProviderStateMixin {
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
        title: Text("고객센터"),
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
          QnAPageQuestion(tabController: _tabController),
          QnAPageAnswer(),
        ],
      ),
    );
  }
}
