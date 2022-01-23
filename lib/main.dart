import 'package:flutter/material.dart';
import 'package:marvel_world/pages/home_page.dart';
import 'package:marvel_world/pages/splash_screen.dart';
import 'package:marvel_world/utils/routes.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyRoutes.Splashscreen,
      routes: {
        "/": (constant) => const SplashScreen(),
        MyRoutes.Splashscreen: (constant) => const SplashScreen(),
        MyRoutes.Homescreen: (context) => const HomeScreen()
      },
    );
  }
}
