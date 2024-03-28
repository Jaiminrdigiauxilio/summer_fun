import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:summer_fun/utilities/app_navigation.dart';

class ShowAnswerView extends StatefulWidget {
  final bool isAnswerCorrect;

  const ShowAnswerView({super.key, required this.isAnswerCorrect});

  @override
  State<ShowAnswerView> createState() => _ShowAnswerViewState();
}

class _ShowAnswerViewState extends State<ShowAnswerView> {
  bool ans = false;
  double sW = 0.10;
  double sH = 0.10;

  @override
  void initState() {
    ans = widget.isAnswerCorrect;
    Future.delayed(
      Duration.zero,
      () => setState(() {
        sW = 0.30;
        sH = 0.80;
      }),
    );
    Timer(const Duration(milliseconds: 2000),
        () => AppNavigation.navigateBack(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: SizedBox(
          width: w * 0.30,
          height: h * 0.80,
          child: Stack(
            alignment: Alignment.center,
            children: [
              AnimatedContainer(
                width: w * sW,
                height: h * sH,
                duration: Duration(
                  milliseconds: 900,
                ),
                curve: Curves.easeOut,
                child: SvgPicture.asset(ans
                    ? "assets/icons/correct_icon.svg"
                    : "assets/icons/incorrect_icon.svg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
