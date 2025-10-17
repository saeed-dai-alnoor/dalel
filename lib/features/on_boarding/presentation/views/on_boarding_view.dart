import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_string.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [Text(AppStrings.skip), OnBoardingView()]),
      ),
    );
  }
}

class OnBoardingWidgetBody extends StatelessWidget {
  const OnBoardingWidgetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [Image.asset(Assets.assetsImagesOnboarding1)],
          );
        },
      ),
    );
  }
}
