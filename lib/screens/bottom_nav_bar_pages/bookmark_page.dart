import 'package:al_hadith/utils/colors.dart';
import 'package:al_hadith/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookMarkPage extends StatelessWidget {
  BookMarkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('কালেকশন',
          style: myTextStyle(20.sp, FontWeight.bold, primaryTextColor)),
    );
  }
}
