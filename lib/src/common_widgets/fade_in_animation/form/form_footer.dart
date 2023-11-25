import 'package:authentication_app/src/constants/image_strings.dart';
import 'package:authentication_app/src/constants/sizes.dart';
import 'package:authentication_app/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormFooter extends StatelessWidget {
  const FormFooter({
    super.key,
    required this.icon,
    required this.alternative,
    required this.question,
    required this.action,
    required this.onTap,
  });

  final String icon, alternative, question, action;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const Text('Or'),
      const SizedBox(height: tDefaultSize - 20),
      SizedBox(
        width: double.infinity,
        child: OutlinedButton.icon(
          onPressed: () {},
          icon: Image(
            image: AssetImage(icon),
            height: 20.0,
          ),
          label: Text(alternative),
        ),
      ),
      const SizedBox(height: tDefaultSize - 20),
      TextButton(
        onPressed: onTap,
        child: Text.rich(
          TextSpan(
            text: question,
            style: Theme.of(context).textTheme.bodyLarge,
            children: [
              TextSpan(
                  text: action, style: const TextStyle(color: Colors.blue)),
            ],
          ),
        ),
      ),
    ]);
  }
}
