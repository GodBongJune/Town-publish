import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:town/pages/launch_page/launch_page_widgets/launch_page_body.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => LoginPage(),
              //   ),
              // );
            },
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: LaunchPageBody(),
    );
  }
}
