import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:summer_fun/screens/home_view.dart';
import 'package:summer_fun/utilities/app_navigation.dart';

class FunGameView extends StatefulWidget {
  const FunGameView({super.key});

  @override
  State<FunGameView> createState() => _FunGameViewState();
}

class _FunGameViewState extends State<FunGameView> {
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
          // question display
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
                      width: w * 0.30,
                      height: h * 0.40,
                      child: SvgPicture.asset(
                        "assets/icons/que_bg.svg",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: w * 0.30,
                        height: h * 0.30,
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
          // option buttons
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Spacer(flex: 4,),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(flex: 2, child: answerBtn(w,h,"Apple","assets/icons/rect_1.svg")),
                      Spacer(flex: 1,),
                      Expanded(flex: 2, child: answerBtn(w,h,"banana","assets/icons/rect_2.svg")),
                    ],
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(flex: 2, child: answerBtn(w,h,"Guava","assets/icons/rect_3.svg")),
                      Spacer(flex: 1,),
                      Expanded(flex: 2, child: answerBtn(w,h,"Grapes","assets/icons/rect_4.svg")),
                    ],
                  ),
                ),
                Spacer(flex: 2,),
              ],
            ),
          ),
          // Ad banner placeholder
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
        shadows: <Shadow>[
          Shadow(
            offset: Offset(2.0, 2.0),
            blurRadius: 3.0,
            color: Color.fromARGB(125, 0, 0, 0),
          ),
          Shadow(
            offset: Offset(2.0, 2.0),
            blurRadius: 2.0,
            color: Color.fromARGB(125, 0, 0, 255),
          ),
        ],
        fontFamily: "PlaypenSans",
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 21,
      ),
    );
  }

  Widget answerBtn(double w, double h, String str, String bg) {
    return SizedBox(
      width: w * 0.25,
      height: h * 0.15,
      child: InkWell(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              bg,
              fit: BoxFit.fitHeight,
            ),
            questionText(str),
          ],
        ),
      ),
    );
  }

}
