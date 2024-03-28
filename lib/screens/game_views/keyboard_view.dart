import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class KeyboardView extends StatefulWidget {
  const KeyboardView({super.key});

  @override
  State<KeyboardView> createState() => _KeyboardViewState();
}

class _KeyboardViewState extends State<KeyboardView> {
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
                Navigator.pop(context);
                // navigateTo(context, const SavedScreen());
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              width: w,
              height: h * 0.60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     keysWidget("assets/icons/nums/0.svg"),
                  //     keysWidget("assets/icons/nums/1.svg"),
                  //     keysWidget("assets/icons/nums/2.svg"),
                  //     keysWidget("assets/icons/nums/3.svg"),
                  //     keysWidget("assets/icons/nums/4.svg"),
                  //     keysWidget("assets/icons/nums/5.svg"),
                  //     keysWidget("assets/icons/nums/6.svg"),
                  //     keysWidget("assets/icons/nums/7.svg"),
                  //     keysWidget("assets/icons/nums/8.svg"),
                  //     keysWidget("assets/icons/nums/9.svg"),
                  //   ],
                  // ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      keysWidget("assets/icons/abc/a.svg"),
                      keysWidget("assets/icons/abc/b.svg"),
                      keysWidget("assets/icons/abc/c.svg"),
                      keysWidget("assets/icons/abc/d.svg"),
                      keysWidget("assets/icons/abc/e.svg"),
                      keysWidget("assets/icons/abc/f.svg"),
                      keysWidget("assets/icons/abc/g.svg"),
                      keysWidget("assets/icons/abc/h.svg"),
                      keysWidget("assets/icons/abc/i.svg"),
                      keysWidget("assets/icons/abc/j.svg"),

                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      keysWidget("assets/icons/abc/k.svg"),
                      keysWidget("assets/icons/abc/l.svg"),
                      keysWidget("assets/icons/abc/m.svg"),
                      keysWidget("assets/icons/abc/n.svg"),
                      keysWidget("assets/icons/abc/o.svg"),
                      keysWidget("assets/icons/abc/p.svg"),
                      keysWidget("assets/icons/abc/q.svg"),
                      keysWidget("assets/icons/abc/r.svg"),
                      keysWidget("assets/icons/abc/s.svg"),

                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      keysWidget("assets/icons/abc/t.svg"),
                      keysWidget("assets/icons/abc/u.svg"),
                      keysWidget("assets/icons/abc/v.svg"),
                      keysWidget("assets/icons/abc/w.svg"),
                      keysWidget("assets/icons/abc/x.svg"),
                      keysWidget("assets/icons/abc/y.svg"),
                      keysWidget("assets/icons/abc/z.svg"),

                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget keysWidget(String path) {
    return SizedBox(
      width: 50,
      height: 50,
      child: InkWell(
        onTap: () { },
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: SvgPicture.asset(path),
          // radius: 30,
        ),
      ),
    );
  }
}
