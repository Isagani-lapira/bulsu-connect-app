import 'package:bulsuconnect/page/onboarding/boardingtile.dart';
import 'package:bulsuconnect/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class OnBoardingMain extends StatelessWidget {
  const OnBoardingMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingSlider(
        totalPage: 3,
        headerBackgroundColor: Colors.white,
        background: [
          Image.asset('img/onboard_img/library.png'),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Image.asset('img/onboard_img/social.png'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Image.asset('img/onboard_img/worktogether.png'),
            ),
          ),
        ],
        centerBackground: true,
        finishButtonText: 'Sign in',
        controllerColor: AppColor.primary,
        speed: 1.8,
        pageBodies: [
          OnBoardingTile(pageIndex: 0),
          OnBoardingTile(pageIndex: 1),
          OnBoardingTile(pageIndex: 2),
        ],
      ),
    );
  }
}
