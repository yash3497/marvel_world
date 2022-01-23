// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:marvel_world/utils/routes.dart';
import 'package:marvel_world/widgets/potrait_player.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);

    Timer(
        Duration(seconds: 12),
        () => Navigator.pushNamedAndRemoveUntil(
            context, MyRoutes.Homescreen, (route) => false));

    return const PotraitPlayerWidget();
  }
}
