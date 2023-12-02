import 'package:authentication_app/src/constants/sizes.dart';
import 'package:authentication_app/src/constants/text_strings.dart';
import 'package:authentication_app/src/features/authentication/controller/login_controller.dart';
import 'package:authentication_app/src/features/authentication/screens/forget_password/forget_password_options/forget_password_model_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginController());
    final formKey = GlobalKey<FormState>();

    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tDefaultSize - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail_outline_rounded),
                labelText: tLoginEmail,
                hintText: tLoginEmail,
              ),
              controller: loginController.email,
            ),
            const SizedBox(height: tDefaultSize - 20),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: tLoginPassword,
                  hintText: tLoginPassword,
                  suffixIcon: IconButton(
                      onPressed: null, icon: Icon(Icons.remove_red_eye_sharp))),
              controller: loginController.password,
            ),
            const SizedBox(height: tDefaultSize - 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: const Text(tLoginForgotPassword,
                    style: TextStyle(color: Colors.blue)),
              ),
            ),
            const SizedBox(height: tDefaultSize - 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    LoginController.instance.loginUser(
                        loginController.email.text.trim(),
                        loginController.password.text.trim());
                  },
                  style: Theme.of(context).elevatedButtonTheme.style,
                  child: Text(tLoginButton.toUpperCase())),
            ),
          ],
        ),
      ),
    );
  }
}
