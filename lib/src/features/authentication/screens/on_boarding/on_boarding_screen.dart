import 'package:authentication_app/src/constants/colors.dart';
import 'package:authentication_app/src/constants/sizes.dart';
import 'package:authentication_app/src/constants/text_strings.dart';
import 'package:authentication_app/src/features/authentication/model/model_on_board.dart';
import 'package:authentication_app/src/features/authentication/screens/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardScreen extends StatelessWidget {
  OnBoardScreen({super.key});

  final pages = [
    OnBoardPageWidget(
      model: OnBoardModel(
        title: tOnBoardingTitle1,
        subtitle: tOnBoardingSubTitle1,
        counterText: tOnBoardingCounter1,
        bgColor: tOnBoardingPage1Color,
      ),
    ),
    OnBoardPageWidget(
      model: OnBoardModel(
        title: tOnBoardingTitle2,
        subtitle: tOnBoardingSubTitle2,
        counterText: tOnBoardingCounter2,
        bgColor: tOnBoardingPage2Color,
      ),
    ),
    OnBoardPageWidget(
      model: OnBoardModel(
        title: tOnBoardingTitle3,
        subtitle: tOnBoardingSubTitle3,
        counterText: tOnBoardingCounter3,
        bgColor: tOnBoardingPage3Color,
      ),
    ),
  ];

  final controller = LiquidController();
  int current = 0;
  int nextPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        LiquidSwipe(
          pages: pages,
          onPageChangeCallback: onPageChangeCallback,
          slideIconWidget: const Icon(Icons.arrow_back_ios),
          enableSideReveal: true,
        ),
        Positioned(
          bottom: 150.0,
          child: OutlinedButton(
            onPressed: () => {
              nextPage = controller.currentPage + 1,
              if (nextPage < pages.length)
                {controller.animateToPage(page: nextPage, duration: 500)}
              else
                {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WelcomeScreen(),
                    ),
                  )
                }
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(color: Colors.black26),
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(20),
            ),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                  color: tDarkColor, shape: BoxShape.circle),
              child: const Icon(Icons.arrow_forward_ios),
            ),
          ),
        ),
        Positioned(
          top: 50.0,
          right: 20.0,
          child: TextButton(
            onPressed: () => controller.jumpToPage(page: 2),
            child: const Text(
              "Skip",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          child: AnimatedSmoothIndicator(
            activeIndex: controller.currentPage,
            count: 3,
            effect: const ExpandingDotsEffect(
              activeDotColor: tDarkColor,
              dotColor: Colors.grey,
              dotHeight: 8,
              dotWidth: 8,
              spacing: 5,
            ),
          ),
        )
      ],
    );
  }

  void onPageChangeCallback(int activePageIndex) {
    current = activePageIndex;
  }
}

class OnBoardPageWidget extends StatelessWidget {
  const OnBoardPageWidget({super.key, required this.model});

  final OnBoardModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(model.title, style: Theme.of(context).textTheme.titleLarge),
              Text(model.subtitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge),
              Text(model.counterText,
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: tDefaultSize * 2),
            ],
          )
        ],
      ),
    );
  }
}
