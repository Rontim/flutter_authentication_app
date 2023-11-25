import 'package:authentication_app/src/constants/sizes.dart';
import 'package:authentication_app/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tDefaultSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextField(
              decoration: InputDecoration(
            label: Text(tSignUpName),
            prefixIcon: Icon(Icons.person_outline_rounded),
          )),
          const SizedBox(height: tDefaultSize - 20),
          const TextField(
              decoration: InputDecoration(
            label: Text(tSignUpEmail),
            prefixIcon: Icon(Icons.email_outlined),
          )),
          const SizedBox(height: tDefaultSize - 20),
          const TextField(
              decoration: InputDecoration(
            label: Text(tSignUpPhone),
            prefixIcon: Icon(Icons.numbers),
          )),
          const SizedBox(height: tDefaultSize - 20),
          const TextField(
              decoration: InputDecoration(
            label: Text(tSignUpPassword),
            prefixIcon: Icon(Icons.lock_outline_rounded),
          )),
          const SizedBox(height: tDefaultSize - 10),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(tSignUpButton.toUpperCase()),
            ),
          )
        ],
      ),
    );
  }
}
