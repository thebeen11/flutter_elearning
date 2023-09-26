import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ulearning/common/utils/app_colors.dart';

Widget text24normal(
    {required String text, Color color = AppColors.primaryText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: color, fontSize: 24.sp, fontWeight: FontWeight.normal),
  );
}

Widget text16normal(
    {required String text, Color color = AppColors.primaryText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: color, fontSize: 16.sp, fontWeight: FontWeight.normal),
  );
}

Widget text14normal(
    {required String text, Color color = AppColors.primaryThreeElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: color, fontSize: 14.sp, fontWeight: FontWeight.normal),
  );
}

