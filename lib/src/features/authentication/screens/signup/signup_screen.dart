import 'package:authentication_app/src/common_widgets/fade_in_animation/form/form_footer.dart';
import 'package:authentication_app/src/common_widgets/fade_in_animation/form/form_header.dart';
import 'package:authentication_app/src/constants/image_strings.dart';
import 'package:authentication_app/src/constants/sizes.dart';
import 'package:authentication_app/src/constants/text_strings.dart';
import 'package:authentication_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:authentication_app/src/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FormHeader(
                  image: tWelcomeImage,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle,
                ),
                const SignUpForm(),
                FormFooter(
                  icon: tGoogleIcon,
                  alternative: 'Sign un with Google',
                  question: tAlreadyHaveAccount,
                  action: tSignUpSignIn,
                  onTap: () => Get.to(() => const LoginScreen()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
