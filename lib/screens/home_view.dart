import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
