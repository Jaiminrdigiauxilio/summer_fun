import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:summer_fun/screens/game_views/game_one.dart';
import 'package:summer_fun/screens/game_views/game_three.dart';
import 'package:summer_fun/screens/game_views/game_two.dart';
import 'package:summer_fun/utilities/app_navigation.dart';

class LevelDialogView extends StatelessWidget {
  const LevelDialogView({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => AppNavigation.navigateBack(context),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: GestureDetector(
            onTap: () => null,
            child: SizedBox(
              width: w * 0.30,
              height: h * 0.80,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset("assets/icons/level_dialog.svg"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: (w * 0.30) - 100,
                        height: 50,
                        child: InkWell(
                          onTap: () {
                            AppNavigation.navigateTo(context, GameThreeView());
                            debugPrint("tapped -1");
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                "assets/icons/level_btn.png",
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Fun",
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
                      ),
                      SizedBox(
                        width: (w * 0.30) - 100,
                        height: 50,
                        child: InkWell(
                          onTap: () {
                            AppNavigation.navigateTo(context, GameOneView());
                            debugPrint("tapped -2");
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                "assets/icons/level_btn.png",
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Easy",
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
                      ),
                      SizedBox(
                        width: (w * 0.30) - 100,
                        height: 50,
                        child: InkWell(
                          onTap: () {
                            AppNavigation.navigateTo(context, GameTwoView());
                            debugPrint("tapped -3");
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                "assets/icons/level_btn.png",
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Hard",
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
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
