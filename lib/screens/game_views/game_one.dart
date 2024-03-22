import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:summer_fun/screens/home_view.dart';
import 'package:summer_fun/utilities/app_navigation.dart';

class GameOneView extends StatefulWidget {
  const GameOneView({super.key});

  @override
  State<GameOneView> createState() => _GameOneViewState();
}

class _GameOneViewState extends State<GameOneView> {
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeView(),
                  ),
                );
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

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: w * 0.50,
                height: h * 0.60,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: w * 0.50,
                      height: h * 0.50,
                      child: SvgPicture.asset(
                        "assets/icons/que_bg.svg",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: w * 0.40,
                        height: h * 0.40,
                        child: SvgPicture.asset(
                          "assets/icons/apple.svg",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ],

                ),
              ),
            ),
          ),
          // Positioned(
          //   left: 0,
          //   top: 0,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       SizedBox(
          //         width: w * 30,
          //         height: h * 10,
          //         child: InkWell(
          //           child: Stack(
          //             alignment: Alignment.center,
          //             children: [
          //               SvgPicture.asset(
          //                 "assets/icons/rect_1.svg",
          //                 fit: BoxFit.fitHeight,
          //               ),
          //               questionText("Apple")
          //             ],
          //           ),
          //         ),
          //       ),
          //       SizedBox(
          //         width: w * 30,
          //         height: h * 10,
          //         child: InkWell(
          //           child: Stack(
          //             alignment: Alignment.center,
          //             children: [
          //               SvgPicture.asset(
          //                 "assets/icons/rect_1.svg",
          //                 fit: BoxFit.fitHeight,
          //               ),
          //               questionText("Apple")
          //             ],
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.black,
              width: w,
              height: 50,
            ),
          )
        ],
      ),
    );
  }

  Widget questionText(String str) {
    return Text(
      str,
      style: TextStyle(
        fontFamily: "PlaypenSans",
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 21,
      ),
    );
  }
}
