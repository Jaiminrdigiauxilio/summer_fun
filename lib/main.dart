import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:summer_fun/screens/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
      overlays: [],
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      title: 'Summer Fun',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

// 1st
//
// [
// {	image : "image",
// option_1:" text",
// option_2 : "text",
// option_3 : "text",
// option_4 : "text",
// correct_option : "text”
// },
// {	image : "image",
// option_1:" text",
// option_2 : "text",
// option_3 : "text",
// option_4 : "text",
// correct_option : "text”
// },
// ]

// 2nd
//
// [
// {	name : "Name",
// option_1:"image1.png",
// option_2 : "image2.png",
// option_3 : "image3.png",
// option_4 : "image4.png",
// correct_option : "image2.png”
// },
// {	name : "Name",
// option_1:"image1.png",
// option_2 : "image2.png",
// option_3 : "image3.png",
// option_4 : "image4.png",
// correct_option : "image2.png”
// },
// ]
