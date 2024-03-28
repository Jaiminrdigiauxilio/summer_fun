import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:summer_fun/widgets/check_answer_view.dart';
import 'package:summer_fun/utilities/app_navigation.dart';

import '../../services/read_data.dart';

//    Easy Game
class EasyGameView extends StatefulWidget {
  const EasyGameView({super.key});

  @override
  State<EasyGameView> createState() => _EasyGameViewState();
}

class _EasyGameViewState extends State<EasyGameView> {
  bool isAnswerSelected = false;
  bool isDataLoaded = false;
  List<Map<String, dynamic>> jsonData = [];

  @override
  void initState() {
    super.initState();
    loadData(jsonData);

    // loadData();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: isDataLoaded
          ? Stack(
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
                  child: isAnswerSelected
                      ? GestureDetector(
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: Image.asset(
                              "assets/icons/next_icon.png",
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          onTap: () {
                            // AppNavigation.navigateBack(context);
                          },
                        )
                      : Opacity(
                          opacity: 0.2,
                          child: SizedBox(
                            width: 60,
                            height: 60,
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Spacer(
                                  flex: 1,
                                ),
                                Expanded(
                                  flex: 4,
                                  child: SizedBox(
                                    width: w * 0.30,
                                    height: h * 0.30,
                                    child: SvgPicture.asset(
                                      "assets/icons/apple.svg",
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                Spacer(
                                  flex: 2,
                                ),
                              ],
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
                      Spacer(
                        flex: 4,
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              flex: 2,
                              child: answerBtn(
                                w,
                                h,
                                "Apple",
                                "assets/icons/rect_1.svg",
                                true,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 2,
                              child: answerBtn(
                                w,
                                h,
                                "banana",
                                "assets/icons/rect_2.svg",
                                false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              flex: 2,
                              child: answerBtn(
                                w,
                                h,
                                "Guava",
                                "assets/icons/rect_3.svg",
                                false,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 2,
                              child: answerBtn(
                                w,
                                h,
                                "Grapes",
                                "assets/icons/rect_4.svg",
                                false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      ),
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
            )
          : Stack(
              alignment: Alignment.center,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      backgroundColor: Colors.white70,
                      strokeWidth: 3,
                    ),
                    Text(
                      "Loading...",
                      style: TextStyle(
                        fontFamily: "PlaypenSans",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 21,
                      ),
                    ),
                  ],
                ),
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
            color: Color.fromARGB(125, 24, 24, 24),
          ),
        ],
        fontFamily: "PlaypenSans",
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 21,
      ),
    );
  }

  Widget answerBtn(double w, double h, String str, String bg, bool ans) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => ShowAnswerView(isAnswerCorrect: ans),
        );
      },
      child: SizedBox(
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
      ),
    );
  }

  void loadData(List<Map<String, dynamic>> data) async {
    data = await ReadJson.readJson("fruit.json");
    // jsonData = data;
    setState(() {
      jsonData.addAll(data);
    });
    Future.delayed(
        Duration(
          seconds: 1,
        ),
        () => setState(() {
              isDataLoaded = true;
            }));

    debugPrint(
        "-/-/-/-/-/entry at index 0: ${jsonData[0]["easy"]["option_3"]}");
    debugPrint("-/-/-/-/-/data: ${data.length}");
    debugPrint("-/-/-/-/-/JsonData: ${jsonData.length}");
  }
}

//  monkey
// SizedBox(
//   width: w * 0.05,
//   height: w * 0.05,
//   child: Image.asset("assets/icons/monkey_1.png", fit: BoxFit.fitWidth,),
//
// ),
