import 'package:authentication_app/src/utils/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:authentication_app/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

void main() {
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
      home: SplashScreen(),
    );
  }
}
