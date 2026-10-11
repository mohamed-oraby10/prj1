import 'package:flutter/material.dart';
import 'package:prj1/data/lists/onboarding_items.dart';
import 'package:prj1/widgets/onboarding_card.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late final PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  void nextPage() {
    if (pageController.page!.round() < onBoardingItems.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  void previousPage() {
    if (pageController.page!.round() > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: onBoardingItems.length,
      controller: pageController,
      itemBuilder: (context, index) {
        return OnboardingCard(
          model: onBoardingItems[index],
          index: index,
          pageController: pageController,
          onTap: nextPage,
          onBack: previousPage,
        );
      },
    );
  }
}
