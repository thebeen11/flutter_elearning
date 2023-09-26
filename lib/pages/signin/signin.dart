import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ulearning/common/widgets/text_widget.dart';
import 'package:flutter_ulearning/pages/signin/widgets/signin_widgets.dart';

class Sigin extends StatelessWidget {
  const Sigin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SafeArea(
            child: Scaffold(
                appBar: buildAppBar(),
                backgroundColor: Colors.white,
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    thirdPartyLogin(),
                    Center(
                        child: text14normal(
                            text: "Or use your email account to login")),
                    SizedBox(
                      height: 50.h,
                    ),
                    appTextField(
                        text: "Email",
                        iconName: "assets/icons/user.png",
                        hintText: "enter your email"),
                    SizedBox(
                      height: 20.h,
                    ),
                    appTextField(
                        text: "Password",
                        iconName: "assets/icons/lock.png",
                        hintText: "enter your password",
                        obscureText: true),
                  ],
                ))));
  }
}
