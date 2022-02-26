// ignore_for_file: empty_constructor_bodies, prefer_const_constructors
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'src/routes/routes.dart';
import 'home.dart';

void main() {
  runApp(const AnimationSamples());
}

class AnimationSamples extends StatelessWidget {
  const AnimationSamples({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routes: allRoutes,
      home: AnimatedSplashScreen(
        duration: 1000,
        splash: Icons.home,
        nextScreen: HomePage(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
