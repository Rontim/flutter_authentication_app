import 'package:authentication_app/firebase_options.dart';
import 'package:authentication_app/src/constants/colors.dart';
import 'package:authentication_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:authentication_app/src/utils/themes/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 1000),
      home: const Center(
        child: CircularProgressIndicator(
          color: tPrimaryColor,
        ),
      ),
    );
  }
}
