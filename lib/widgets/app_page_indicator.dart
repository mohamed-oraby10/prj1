import 'package:flutter/material.dart';
import 'package:prj1/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AppPageIndicator extends StatelessWidget {
  const AppPageIndicator({
    super.key,
    required this.pageController,
    required this.length,
  });
  final PageController pageController;
  final int length;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SmoothPageIndicator(
        controller: pageController,
        count: length,
        effect: CustomizableEffect(
          activeDotDecoration: DotDecoration(
            width: 51,
            height: 16,
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(16),
          ),
          dotDecoration: DotDecoration(
            width: 16,
            height: 16,
            color: const Color(0xffF1F1F1),
            borderRadius: BorderRadius.circular(16),
          ),
          spacing: 8,
        ),
      ),
    );
  }
}
