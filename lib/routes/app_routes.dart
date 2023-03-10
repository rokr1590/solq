import 'package:flutter/material.dart';
import 'package:soloq/pages/Account/LogIn.dart';
import 'package:soloq/pages/Account/SignUp.dart';
import 'package:soloq/pages/HomeScreen.dart';
import 'package:soloq/pages/SplashScreen.dart';
import 'package:soloq/widgets/custom_bottom_bar.dart';

class AppRoutes {
  static const String signupScreen = '/sign_up_screen';
  static const String splashScreen = '/splash_screen';
  static const String logInScreen = '/log_in_screen';
  static const String customscreen = '/custom_bottom_bar';
  static const String homeScreen ='/home_screen';

  static Map<String, WidgetBuilder> routes = {
    signupScreen: (context) => const SignUp(),
    logInScreen: (context) => const LogIn(),
    splashScreen:(context) => const SplashScreen(),
    customscreen:(context) => const CustomBottomBar(),
    homeScreen:(context) => const HomeScreen()
  };
}