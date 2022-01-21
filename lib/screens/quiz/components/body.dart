import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:quiz_app/constants.dart';

import 'progress_bar.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        bottom: 0,
        top: 0,
        child: Image.asset(
          "assets/images/photo.png",
        ),
      ),
      SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
        child: Column(
          children: const [ProgressBar()],
        ),
      ))
    ]);
  }
}
