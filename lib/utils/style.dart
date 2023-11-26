import 'package:al_hadith/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle myTextStyle(double fSize, FontWeight fWeight, Color clr) {
  return TextStyle(
    fontSize: fSize,
    fontWeight: fWeight,
    color: clr,
  );
}

class AppTextStyles {
  static TextStyle appBarTitle = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: secondaryTextColor,
  );

  static TextStyle nickName = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: secondaryTextColor,
  );

  static TextStyle headline1 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    color: primaryTextColor,
  );

  static TextStyle headline2 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: greyTextColor,
  );

  static TextStyle bodyText = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: secondaryTextColor,
  );

  static TextStyle hadithListTitle = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: primaryTextColor,
  );

  static TextStyle bookText = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: secondaryTextColor,
  );
}

InputDecoration textFieldStyle(String title) {
  return InputDecoration(
      hintStyle: AppTextStyles.headline2,
      suffixIcon: Icon(
        Icons.search,
        color: greyColor,
      ),
      hintText: title,
      filled: true,
      fillColor: secondaryTextColor,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none));
}
