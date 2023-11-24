
import 'package:authentication_app/src/constants/colors.dart';
import 'package:authentication_app/src/constants/image_strings.dart';
import 'package:authentication_app/src/constants/sizes.dart';
import 'package:authentication_app/src/constants/text_strings.dart';
import 'package:authentication_app/src/features/authentication/controller/splash_screen_constroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});


  final splashScreenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    splashScreenController.startAnimation();

    return Scaffold(
      body: Stack(children: [
          Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: splashScreenController.animate.value ? 0 : -30,
                left: splashScreenController.animate.value ? 0 : -30,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashScreenController.animate.value ? 1 : 0,
                  child: const Image(image: AssetImage(tSplashTopIcon)),
                ),
              ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
              top: 80,
              left: splashScreenController.animate.value ? tDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashScreenController.animate.value ? 1 : 0,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(tAppName, style: Theme.of(context).textTheme.displaySmall),
                    Text(tAppTagLine, style: Theme.of(context).textTheme.titleSmall)
                  ],
                ),
              ),
            ),
          ),

          Obx(
            () => AnimatedPositioned(
            duration: const Duration(milliseconds: 2400),
            bottom: splashScreenController.animate.value ? 60 : 0,
            right: tDefaultSize,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 2000),
              opacity: splashScreenController.animate.value ? 1 : 0,
              child: Container(
                  width: tSplashContainerSize,
                  height: tSplashContainerSize,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                    color: tPrimaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
