import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Container(
      width: w,
      height: h,
      child: Opacity(
        opacity: 0.5,
        child: Image.asset(
          "assets/bg/app_bg.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
