import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utilities/app_navigation.dart';

class CompletionDialog extends StatefulWidget {
  const CompletionDialog({super.key});

  @override
  State<CompletionDialog> createState() => _CompletionDialogState();
}

class _CompletionDialogState extends State<CompletionDialog> {
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
                  SvgPicture.asset("assets/icons/complete_dialog.svg"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

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
