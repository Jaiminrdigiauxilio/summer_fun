import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/common_views/about_us_view.dart';
import '../screens/common_views/more_apps_view.dart';
import '../screens/common_views/profile_view.dart';
import '../utilities/app_navigation.dart';


class IMenuDialog extends StatelessWidget {
  const IMenuDialog({super.key});

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
              width: w * 0.40,
              height: h * 0.80,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: w * 0.40,
                    height: h * 0.90,
                    child: SvgPicture.asset(
                      "assets/icons/level_dialog.svg",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      menuButton(context, w, ProfileView(), "My Profile"),
                      menuButton(context, w, MoreAppsView(), "More Apps!"),
                      menuButton(context, w, AboutUsView(), "About Developer"),
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

  Widget menuButton(
      BuildContext context, double w, Widget screen, String text) {
    return SizedBox(
      width: (w * 0.30) - 100,
      height: 50,
      child: GestureDetector(
        onTap: () {
          AppNavigation.navigateBack(context);
          AppNavigation.navigateTo(context, screen);
          debugPrint("tapped -1");
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/icons/level_btn.png",
              ),
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Spacer(),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "PlaypenSans",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 21,
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


