import 'package:authentication_app/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:authentication_app/src/features/authentication/screens/welcome/welcome.dart';

import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get to => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));

    Get.to(OnBoardScreen());
  }
}
