import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:summer_fun/screens/game_views/game_one.dart';
import 'package:summer_fun/screens/keyboard_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => KeyboardView(),
                    ),
                  );
                  // navigateTo(context, const SavedScreen());
                },
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(flex: 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      menuBtn(
                        w,
                        h,
                        "assets/icons/btn_1.svg",
                        "Animals",
                        () {},
                      ),
                      menuBtn(
                        w,
                        h,
                        "assets/icons/btn_2.svg",
                        "Birds",
                        () {},
                      ),
                      menuBtn(
                        w,
                        h,
                        "assets/icons/btn_3.svg",
                        "Logos",
                        () {},
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
                        () {},
                      ),
                      menuBtn(
                        w,
                        h,
                        "assets/icons/btn_10.svg",
                        "Fruits",
                        () {Navigator.push(context, MaterialPageRoute(builder: (context) => GameOneView(),));},
                      ),
                      menuBtn(
                        w,
                        h,
                        "assets/icons/btn_1.svg",
                        "Flowers",
                        () {},
                      ),
                      menuBtn(
                        w,
                        h,
                        "assets/icons/btn_4.svg",
                        "insects",
                        () {},
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
                        () {},
                      ),
                      menuBtn(
                        w,
                        h,
                        "assets/icons/btn_7.svg",
                        "SuperHeroes",
                        () {},
                      ),
                      menuBtn(
                        w,
                        h,
                        "assets/icons/btn_11.svg",
                        "Flags",
                        () {},
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
      ),
    );
  }

  Widget menuBtn(double w, double h, String icon, String title,
      VoidCallback voidCallback) {
    return InkWell(
      child: SizedBox(
        width: w / 5,
        height: h / 6,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              icon,
              fit: BoxFit.fitWidth,
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: "PlaypenSans",
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 21,
              ),
            ),
          ],
        ),
      ),
      onTap: voidCallback,
    );
  }
}
