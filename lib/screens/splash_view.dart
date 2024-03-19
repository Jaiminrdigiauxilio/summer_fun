import 'dart:async';

import 'package:flutter/material.dart';
import 'package:summer_fun/screens/home_view.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeView())));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset("assets/bg/splash_bg.png", fit: BoxFit.fill,)
          ],
        ),
      ),
    );
  }
}
