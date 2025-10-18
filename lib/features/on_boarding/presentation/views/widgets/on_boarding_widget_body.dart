import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:dalel/features/on_boarding/presentation/views/widgets/custom_smooth_page_indicator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  const OnBoardingWidgetBody({
    super.key,
    required this.controller,
    this.onPageChanged,
  });
  final PageController controller;
  final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,

      // !For scroll Mouse in Laptop
      child: Listener(
        onPointerSignal: (event) {
          if (event is PointerScrollEvent) {
            if (event.scrollDelta.dy > 0) {
              controller.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            } else if (event.scrollDelta.dy < 0) {
              controller.previousPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          }
        },
        // !PageView
        child: PageView.builder(
          physics: BouncingScrollPhysics(),
          controller: controller,
          onPageChanged: onPageChanged,
          itemCount: onBoardingData.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                // !image
                Container(
                  height: 290,
                  width: 343,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(onBoardingData[index].imagePath),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                //  !indicator
                CustomSmoothPageIndicator(controller: controller),
                SizedBox(height: 32),
                //  !title
                Text(
                  onBoardingData[index].title,
                  style: CustomTextStyles.poppins500style24.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                //  !subTitle
                Text(
                  onBoardingData[index].subTitle,
                  style: CustomTextStyles.poppins300style16,
                  textAlign: TextAlign.center,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
