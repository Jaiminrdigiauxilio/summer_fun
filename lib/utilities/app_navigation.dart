import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AppNavigation {

  // void navigateToWith(BuildContext context, Widget screen, String instrument) {
  //   // playSound(ConstantStrings.nav1);
  //   Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => screen,
  //       ));
  // }

  static void navigateTo(BuildContext context, Widget screen) {
    // playSound(ConstantStrings.nav2);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => screen,
        ));
  }

  static void navigateBack(BuildContext context) {
    // playSound(ConstantStrings.nav3);
    Navigator.pop(context);
  }

  static void navigateBackTo(BuildContext context, Widget screen) {
    // playSound(ConstantStrings.nav3);
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => screen,
        ),
            (route) => false);
  }

//  music playing method
//   void playSound(String play) async {
//     final player = AudioPlayer();
//     final audioPath = play;
//     await player.play(AssetSource(audioPath));
//     Future.delayed(Duration(seconds: 2), () {
//       player.stop();
//     });
//   }

}