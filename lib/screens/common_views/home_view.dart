import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:summer_fun/screens/game_views/level_dialog.dart';
import 'package:summer_fun/screens/game_views/keyboard_view.dart';
import 'package:summer_fun/utilities/app_navigation.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
            bottom: 10.0,
            left: 5.0,
            child: GestureDetector(
              child: SizedBox(
                width: w * 0.10,
                height: h * 0.12,
                child: Image.asset(
                  "assets/icons/i.png",
                  fit: BoxFit.fitHeight,
                ),
              ),
              onTap: () {
                debugPrint("I tapped");
              },
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(
                  flex: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    menuBtn(
                      w,
                      h,
                      "assets/icons/btn_1.svg",
                      "Animals",
                      () {
                        showLevelDialog(context);
                      },
                      true,
                    ),
                    menuBtn(
                      w,
                      h,
                      "assets/icons/btn_2.svg",
                      "Birds",
                      () {
                        showLevelDialog(context);
                      },
                      true,
                    ),
                    menuBtn(
                      w,
                      h,
                      "assets/icons/btn_3.svg",
                      "Logos",
                      () {
                        showLevelDialog(context);
                      },
                      true,
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    menuBtn(
                      w,
                      h,
                      "assets/icons/btn_9.svg",
                      "Cartoons",
                      () {
                        showLevelDialog(context);
                      },
                      true,
                    ),
                    menuBtn(
                      w,
                      h,
                      "assets/icons/btn_10.svg",
                      "Fruits",
                      () {
                        showLevelDialog(context);
                      },
                      false,
                    ),
                    menuBtn(
                      w,
                      h,
                      "assets/icons/btn_1.svg",
                      "Flowers",
                      () {
                        showLevelDialog(context);
                      },
                      true,
                    ),
                    menuBtn(
                      w,
                      h,
                      "assets/icons/btn_4.svg",
                      "insects",
                      () {
                        showLevelDialog(context);
                      },
                      false,
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    menuBtn(
                      w,
                      h,
                      "assets/icons/btn_4.svg",
                      "Vegetables",
                      () {
                        showLevelDialog(context);
                      },
                      false,
                    ),
                    menuBtn(
                      w,
                      h,
                      "assets/icons/btn_7.svg",
                      "SuperHeroes",
                      () {
                        showLevelDialog(context);
                      },
                      true,
                    ),
                    menuBtn(
                      w,
                      h,
                      "assets/icons/btn_11.svg",
                      "Flags",
                      () {
                        showLevelDialog(context);
                      },
                      true,
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),

          // Positioned(
          //   top: 20.0,
          //   left: 1.0,
          //   child: InkWell(
          //     child: SizedBox(
          //       width: w / 7,
          //       height: h / 7,
          //       child: SvgPicture.asset(
          //         "assets/icons/back_icon.svg",
          //         fit: BoxFit.fitHeight,
          //       ),
          //     ),
          //     onTap: () {
          //       // navigateTo(context, const SavedScreen());
          //     },
          //   ),
          // ),

          // Positioned(
          //   top: 120.0,
          //   right: 1.0,
          //   child: InkWell(
          //     child: SizedBox(
          //       width: w / 7,
          //       height: h / 7,
          //       child: SvgPicture.asset("assets/icons/next_icon.svg")
          //     ),
          //     onTap: () {
          //       // navigateTo(context, const SavedScreen());
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }

  void showLevelDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => LevelDialogView(),
    );
  }

  Widget menuBtn(
    double w,
    double h,
    String icon,
    String title,
    VoidCallback voidCallback,
    bool isBtnSymmetrical,
  ) {
    return GestureDetector(
      onTap: voidCallback,
      child: SizedBox(
        width: w / 5,
        height: h / 6,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              icon,
              fit: BoxFit.fitHeight,
            ),
            Column(
              children: [
                Spacer(),
                Transform.rotate(
                  angle: isBtnSymmetrical ? 0.0 : -0.1,
                  child: Center(
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "PlaypenSans",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 2,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
