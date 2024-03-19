import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: w,
              child: Image.asset(
                "assets/bg/app_bg.png",
                fit: BoxFit.cover,
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
                  // navigateTo(context, const SavedScreen());
                },
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: SizedBox(
                          width: w / 3,
                          height: h / 6,
                          child: SvgPicture.asset(
                            "assets/icons/btn_1.svg",
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        onTap: (){ },
                      ),
                      InkWell(
                        child: SizedBox(
                          width: w / 3,
                          height: h / 6,
                          child: SvgPicture.asset(
                            "assets/icons/btn_2.svg",
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        onTap: (){ },
                      ),
                      InkWell(
                        child: SizedBox(
                          width: w / 3,
                          height: h / 6,
                          child: SvgPicture.asset(
                            "assets/icons/btn_3.svg",
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        onTap: (){ },
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: SizedBox(
                          width: w / 5,
                          height: h / 6,
                          child: SvgPicture.asset(
                            "assets/icons/btn_7.svg",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        onTap: (){ },
                      ),
                      InkWell(
                        child: SizedBox(
                          width: w / 5,
                          height: h / 6,
                          child: SvgPicture.asset(
                            "assets/icons/btn_4.svg",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        onTap: (){ },
                      ),
                      InkWell(
                        child: SizedBox(
                          width: w / 5,
                          height: h / 6,
                          child: SvgPicture.asset(
                            "assets/icons/btn_1.svg",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        onTap: (){ },
                      ),
                      InkWell(
                        child: SizedBox(
                          width: w / 5,
                          height: h / 6,
                          child: SvgPicture.asset(
                            "assets/icons/btn_6.svg",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        onTap: (){ },
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: SizedBox(
                          width: w / 3,
                          height: h / 6,
                          child: SvgPicture.asset(
                            "assets/icons/btn_7.svg",
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        onTap: (){ },
                      ),
                      InkWell(
                        child: SizedBox(
                          width: w / 3,
                          height: h / 6,
                          child: SvgPicture.asset(
                            "assets/icons/btn_8.svg",
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        onTap: (){ },
                      ),
                      InkWell(
                        child: SizedBox(
                          width: w / 3,
                          height: h / 6,
                          child: SvgPicture.asset(
                            "assets/icons/btn_3.svg",
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        onTap: (){ },
                      ),
                    ],
                  ),
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
}
