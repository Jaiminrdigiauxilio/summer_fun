import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utilities/app_navigation.dart';
import '../../widgets/check_answer_view.dart';

//    Hard Game
class HardGameView extends StatefulWidget {
  const HardGameView({super.key});

  @override
  State<HardGameView> createState() => _HardGameViewState();
}

class _HardGameViewState extends State<HardGameView> {
  bool isAnswerSelected = false;
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
            right: 10.0,
            child: isAnswerSelected ? InkWell(
              child: SizedBox(
                width: 60,
                height:60,
                child: Image.asset(
                  "assets/icons/next_icon.png",
                  fit: BoxFit.fitHeight,
                ),
              ),
              onTap: () {
                // AppNavigation.navigateBack(context);
              },
            ): Opacity(
              opacity: 0.2,
              child: SizedBox(
                width: 60,
                height:60,
                child: Image.asset(
                  "assets/icons/next_icon.png",
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: queBox(w, h, "Apple", "assets/icons/abg_3.png"),
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
                      answerCard("", "assets/icons/abg_1.png",
                        "assets/icons/lemon.svg", w, h,false,),
                      answerCard("", "assets/icons/abg_2.png",
                        "assets/icons/corn.svg", w, h,false,),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      answerCard("", "assets/icons/abg_3.png",
                        "assets/icons/apple.svg", w, h,true,),
                      answerCard("", "assets/icons/abg_4.png",
                        "assets/icons/lemon.svg", w, h,false,),
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
        fontSize: 24,
      ),
    );
  }


  Widget queBox(double w, double h, String str, String bg) {
    return SizedBox(
      width: w * 0.50,
      height: h * 0.15,
      child: Column(
        children: [
          Spacer(flex: 1,),
          Expanded(
            flex: 5,
            child: GestureDetector(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    bg,
                    fit: BoxFit.fitWidth,
                  ),
                  questionText(str),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }

  Widget answerCard(String audio, String bg, String img, double w, double h, bool ans) {
    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (context) => ShowAnswerView(isAnswerCorrect: ans),
      ),
      child: SizedBox(
        width: w * 0.50,
        height: h * 0.50,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: w * 0.25,
              height: h * 0.30,
              child: Image.asset(
                bg,
                fit: BoxFit.fitHeight,
              ),
            ),
            Center(
              child: SizedBox(
                width: w * 0.20,
                height: h * 0.25,
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
