import 'package:authentication_app/src/constants/sizes.dart';
import 'package:authentication_app/src/constants/text_strings.dart';
import 'package:authentication_app/src/features/authentication/controller/signup_controller.dart';
import 'package:authentication_app/src/features/authentication/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: tDefaultSize - 10),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: controller.name,
              decoration: const InputDecoration(
                label: Text(tSignUpName),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            const SizedBox(height: tDefaultSize - 20),
            TextField(
              controller: controller.email,
              decoration: const InputDecoration(
                label: Text(tSignUpEmail),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(height: tDefaultSize - 20),
            TextField(
              controller: controller.phone,
              decoration: const InputDecoration(
                label: Text(tSignUpPhone),
                prefixIcon: Icon(Icons.numbers),
              ),
            ),
            const SizedBox(height: tDefaultSize - 20),
            TextField(
              controller: controller.password,
              decoration: const InputDecoration(
                label: Text(tSignUpPassword),
                prefixIcon: Icon(Icons.lock_outline_rounded),
              ),
            ),
            const SizedBox(height: tDefaultSize - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    final user = UserModel(
                      email: controller.email.text.trim(),
                      fullName: controller.name.text.trim(),
                      phoneNo: controller.phone.text.trim(),
                      password: controller.password.text.trim(),
                    );

                    SignUpController.instance.createUser(user);
                  }
                },
                child: Text(tSignUpButton.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
