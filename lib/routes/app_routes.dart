import 'package:flutter/material.dart';
import 'package:soloq/pages/Account/LogIn.dart';
import 'package:soloq/pages/Account/SignUp.dart';
import 'package:soloq/pages/SplashScreen.dart';

class AppRoutes {
  static const String signupScreen = '/sign_up_screen';
  static const String splashScreen = '/splash_screen';
  static const String logInScreen = '/log_in_screen';

  static Map<String, WidgetBuilder> routes = {
    signupScreen: (context) => const SignUp(),
    logInScreen: (context) => const LogIn(),
    splashScreen:(context) => const SplashScreen()
  };
}