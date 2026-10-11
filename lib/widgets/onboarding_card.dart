import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prj1/constants.dart';
import 'package:prj1/data/lists/onboarding_items.dart';
import 'package:prj1/data/models/onboarding_model.dart';
import 'package:prj1/widgets/app_page_indicator.dart';
import 'package:prj1/widgets/main_button.dart';
import 'package:prj1/widgets/onboarding_animated_item.dart';

class OnboardingCard extends StatelessWidget {
  const OnboardingCard({
    super.key,
    required this.model,
    required this.index,
    required this.onTap,
    required this.pageController,
    required this.onBack,
  });
  final OnboardingModel model;
  final int index;
  final VoidCallback onTap, onBack;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 70),
          if (index != 0)
            GestureDetector(onTap: onBack, child: Icon(Icons.arrow_back_ios)),
          SizedBox(height: 6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OnboardingAnimatedItem(
                index: index,
                pageController: pageController,
                delay: 0,
                child: SvgPicture.asset(
                  model.image,
                  width: double.infinity,
                  height: 380,
                ),
              ),

              const SizedBox(height: 40),

              OnboardingAnimatedItem(
                index: index,
                pageController: pageController,
                delay: 100,
                child: Text(
                  model.title,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: kTitleText,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 8),

              OnboardingAnimatedItem(
                index: index,
                pageController: pageController,
                delay: 200,
                child: Text(
                  model.desc,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: kDescText,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 32),
              AppPageIndicator(
                length: onBoardingItems.length,
                pageController: pageController,
              ),
              index != 3
                  ? Column(
                      children: [
                        SizedBox(height: 32),
                        GestureDetector(
                          onTap: onTap,
                          child: SizedBox(
                            width: 86,
                            height: 86,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 86,
                                  height: 86,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  width: 86,
                                  height: 86,
                                  child: CircularProgressIndicator(
                                    value: (index + 1) / onBoardingItems.length,
                                    strokeWidth: 4,
                                    strokeCap: StrokeCap.round,
                                    valueColor: const AlwaysStoppedAnimation(
                                      kPrimaryColor,
                                    ),
                                    backgroundColor: Color(0xffEEEEEE),
                                  ),
                                ),

                                Container(
                                  width: 64,
                                  height: 64,
                                  decoration: const BoxDecoration(
                                    color: kPrimaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 24),
                        Text(
                          'SKIP',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: kDescText,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        SizedBox(height: 80),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 46),
                          child: MainButton(text: 'START', onTap: () {}),
                        ),
                      ],
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
