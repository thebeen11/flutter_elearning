import 'package:flutter/material.dart';
import 'package:flutter_ulearning/common/utils/app_colors.dart';
import 'package:flutter_ulearning/common/widgets/app_shadow.dart';

import '../../common/widgets/text_widget.dart';

Widget appOnBoardingPage(PageController controller,
    {String imagePath = "assets/images/reading.png",
    String title = "",
    String subTitle = "",
    index = 0, required BuildContext context}) {
  return Column(
    children: [
      Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
      ),
      Container(
          margin: const EdgeInsets.only(top: 15),
          child: text24normal(text: title)),
      Container(
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: text16normal(text: subTitle)),
      _nextButton(index, controller, context)
    ],
  );
}

Widget _nextButton(index, PageController controller, BuildContext context) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(index,
            duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      } else {
        Navigator.pushNamed(context, "/signIn");
      }
    },
    child: Container(
      width: 325,
      height: 50,
      margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
      decoration: appBoxShadow(),
      child: Center(
          child:
              text16normal(text: index<3?"next":"Get Started", color: AppColors.primaryBackground)),
    ),
  );
}
