import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:marvel_world/pages/home_page.dart';
import 'package:marvel_world/pages/splash_screen.dart';
import 'package:marvel_world/utils/routes.dart';
import 'package:marvel_world/widgets/theme.dart';

void main() async {
  // ignore: prefer_const_constructors
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      themeMode: ThemeMode.system,
      initialRoute: MyRoutes.Splashscreen,
      routes: {
        "/": (constant) => const SplashScreen(),
        MyRoutes.Splashscreen: (constant) => const SplashScreen(),
        MyRoutes.Homescreen: (context) => const HomeScreen()
      },
    );
  }
}
