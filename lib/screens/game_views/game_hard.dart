import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../utilities/app_navigation.dart';
import '../home_view.dart';

class HardGameView extends StatefulWidget {
  const HardGameView({super.key});

  @override
  State<HardGameView> createState() => _HardGameViewState();
}

class _HardGameViewState extends State<HardGameView> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            width: w,
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                "assets/bg/app_bg.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 10.0,
            right: 1.0,
            child: InkWell(
              child: SizedBox(
                width: w / 8,
                height: h / 8,
                child: SvgPicture.asset(
                  "assets/icons/home_icon.svg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              onTap: () {
                AppNavigation.navigateBackTo(context, HomeView());
              },
            ),
          ),
          Positioned(
            top: 10.0,
            left: 1.0,
            child: InkWell(
              child: SizedBox(
                width: w / 8,
                height: h / 8,
                child: SvgPicture.asset(
                  "assets/icons/back_icon.svg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              onTap: () {
                AppNavigation.navigateBack(context);
              },
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(

              children: [
                Spacer(flex: 1,),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      audioCard("", "assets/icons/abg_1.png",
                        "assets/icons/lemon.svg", w, h,),
                      audioCard("", "assets/icons/abg_2.png",
                        "assets/icons/corn.svg", w, h,),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      audioCard("", "assets/icons/abg_3.png",
                        "assets/icons/apple.svg", w, h,),
                      audioCard("", "assets/icons/abg_4.png",
                          "assets/icons/lemon.svg", w, h,),
                    ],
                  ),
                ),
                Spacer(flex: 1,),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.black,
              width: w,
              height: 50,
            ),
          ),
        ],
      ),
    );
  }

  Widget audioCard(String audio, String bg, String img, double w, double h) {
    return SizedBox(
      width: w * 0.50,
      height: h * 0.50,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: w * 0.30,
            height: h * 0.35,
            child: Image.asset(
              bg,
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: SizedBox(
              width: w * 0.20,
              height: h * 0.30,
              child: SvgPicture.asset(
                img,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }

}
