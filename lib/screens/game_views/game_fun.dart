import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:summer_fun/services/text_to_speech.dart';
import '../../utilities/app_navigation.dart';
import '../../widgets/app_bg.dart';

//    Fun Game
class FunGameView extends StatefulWidget {
  const FunGameView({super.key});

  @override
  State<FunGameView> createState() => _FunGameViewState();
}

class _FunGameViewState extends State<FunGameView> {
  bool isAnswerSelected = false;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          AppBackground(),
          Positioned(
            top: 10.0,
            right: 10.0,
            child: GestureDetector(
              child: SizedBox(
                width: 60,
                height:60,
                child: Image.asset(
                  "assets/icons/refresh.png",
                  fit: BoxFit.fitHeight,
                ),
              ),
              onTap: () {
                // AppNavigation.navigateBack(context);
              },
            )
          ),
          Positioned(
            top: 10.0,
            left: 1.0,
            child: GestureDetector(
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
                      audioCard("Lemon", "assets/icons/abg_1.png",
                        "assets/icons/lemon.svg", w, h,),
                      audioCard("corn", "assets/icons/abg_2.png",
                        "assets/icons/corn.svg", w, h,),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      audioCard("Apple", "assets/icons/abg_3.png",
                        "assets/icons/apple.svg", w, h,),
                      audioCard("Lemon", "assets/icons/abg_4.png",
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
    return GestureDetector(
      onTap: () {
        EnableTTS.speakWord(audio);
      },
      child: SizedBox(
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
      ),
    );
  }

}
