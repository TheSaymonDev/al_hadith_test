import 'package:al_hadith/utils/colors.dart';
import 'package:al_hadith/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget backgroundDesign({required Widget child}) {
  return Container(
    padding: EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 0.h),
    width: double.infinity,
    decoration: BoxDecoration(
        color: bgGreyColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        )),
    child: child,
  );
}

Widget buildContainer({required int index, required Widget child}) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: secondaryTextColor,
      borderRadius: BorderRadius.circular(10.r),
    ),
    child: child,
  );
}

Widget buildShape({required int index, required String text}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
    child: ClipPolygon(
      sides: 6,
      borderRadius: 5.0,
      rotate: 60.0,
      child: Container(
          alignment: Alignment.center,
          color: primaryColor,
          child: Text(
            text,
            style: AppTextStyles.nickName,
          )),
    ),
  );
}
