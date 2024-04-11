import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:town/pages/launch_page/launch_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedSplashScreen(
        splash: SvgPicture.asset("assets/logo/logo.svg"),
        splashIconSize: 400,
        nextScreen: LaunchPage(),
        duration: 2000,
      ),
    );
  }
}
