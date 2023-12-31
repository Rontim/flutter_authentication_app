import 'package:authentication_app/src/features/core/screens/dashboard/dashboard.dart';
import 'package:authentication_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  final otp = TextEditingController();

  void verifyOtp(String otp) async {
    bool isVerified = await AuthenticationRepository.instance.verifyOtp(otp);

    isVerified ? Get.offAll(() => const Dashboard()) : Get.back();
  }
}
