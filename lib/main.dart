import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soloq/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SoloQ",
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.customscreen,
      routes: AppRoutes.routes//WelcomePage(),
    );
  }
}


