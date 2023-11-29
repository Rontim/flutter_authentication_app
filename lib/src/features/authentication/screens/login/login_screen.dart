import 'package:authentication_app/src/common_widgets/form/form_footer.dart';
import 'package:authentication_app/src/common_widgets/form/form_header.dart';
import 'package:authentication_app/src/constants/image_strings.dart';
import 'package:authentication_app/src/constants/sizes.dart';
import 'package:authentication_app/src/constants/text_strings.dart';
import 'package:authentication_app/src/features/authentication/screens/login/widgets/login_form.dart';
import 'package:authentication_app/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  title: tLoginTitle,
                  subTitle: tLoginSubTitle,
                ),
                const LoginForm(),
                FormFooter(
                  icon: tGoogleIcon,
                  alternative: 'Sign in with Google',
                  question: tLoginDontHaveAccount,
                  action: tLoginSignUp,
                  onTap: () => Get.to(() => const SignUpScreen()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
