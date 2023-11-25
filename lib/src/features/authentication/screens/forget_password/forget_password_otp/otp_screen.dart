import 'package:authentication_app/src/constants/sizes.dart';
import 'package:authentication_app/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                tOtpTitle,
                style: GoogleFonts.montserrat(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                tOtpSubTitle.toUpperCase(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: tDefaultSize + 10.0),
              const Text(
                "$tOtpMessage test@example.com",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: tDefaultSize - 10.0),
              OtpTextField(
                numberOfFields: 6,
                filled: true,
                fillColor: Colors.black.withOpacity(0.2),
                onCodeChanged: (code) {
                  print('Code is $code');
                },
                onSubmit: (verificationCode) {
                  print('Verification Code is $verificationCode');
                },
              ),
              const SizedBox(height: tDefaultSize - 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Next'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
