import 'package:authentication_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:authentication_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:authentication_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:authentication_app/src/constants/colors.dart';
import 'package:authentication_app/src/constants/image_strings.dart';
import 'package:authentication_app/src/constants/sizes.dart';
import 'package:authentication_app/src/constants/text_strings.dart';
import 'package:authentication_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:authentication_app/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = FadeInAnimationController();
    controller.animationIn();

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1200),
              bottom: controller.animate.value ? 0 : -100,
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                padding: const EdgeInsets.all(tDefaultSize),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: const AssetImage(tWelcomeImage),
                      height: height * 0.6,
                    ),
                    Column(children: [
                      Text(
                        tWelcomeTitle,
                        style: Theme.of(context).textTheme.displaySmall,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        tWelcomeSubTitle,
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      )
                    ]),
                    Row(children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Get.to(() => const LoginScreen()),
                          style: Theme.of(context).outlinedButtonTheme.style,
                          child: Text(tLogin.toUpperCase()),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => Get.to(() => const SignUpScreen()),
                          style: Theme.of(context).elevatedButtonTheme.style,
                          child: Text(tSignUp.toUpperCase()),
                        ),
                      ),
                    ])
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
