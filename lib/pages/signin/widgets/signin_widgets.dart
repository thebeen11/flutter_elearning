import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ulearning/common/utils/app_colors.dart';
import 'package:flutter_ulearning/common/widgets/app_shadow.dart';
import 'package:flutter_ulearning/common/widgets/image_widgets.dart';
import 'package:flutter_ulearning/common/widgets/text_widget.dart';

AppBar buildAppBar() {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        color: AppColors.primaryFourElementText,
        height: 1,
      ),
    ),
    title: text16normal(text: "Login"),
  );
}

Widget thirdPartyLogin() {
  return Container(
    margin: EdgeInsets.only(left: 80.w, right: 80.w, top: 40.h, bottom: 20.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _loginButton("assets/icons/google.png"),
        _loginButton("assets/icons/apple.png"),
        _loginButton("assets/icons/facebook.png"),
      ],
    ),
  );
}

Widget _loginButton(String imagePath) {
  return GestureDetector(
    child: SizedBox(
      width: 40.w,
      height: 40.h,
      child: Image.asset(imagePath),
    ),
  );
}

Widget appTextField(
    {required String text,
    String iconName = "",
    String hintText = "Type in your info", bool obscureText=false}) {
  return Container(
    padding: EdgeInsets.only(left: 25.w, right: 25.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14normal(text: text),
        Container(
          width: 325.w,
          height: 50.h,
          decoration: appBoxDecorationTextField(),
          child: Row(children: [
            Container(
              margin: EdgeInsets.only(left: 17.w),
              child: appImage(imagePath: iconName),
            ),
            SizedBox(
              width: 260.w,
              height: 50.h,
              child: TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: hintText,
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                ),
                maxLines: 1,
                autocorrect: false,
                obscureText: obscureText,
              ),
            )
          ]),
        )
      ],
    ),
  );
}
