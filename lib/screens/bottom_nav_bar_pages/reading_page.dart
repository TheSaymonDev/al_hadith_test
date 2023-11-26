import 'package:al_hadith/utils/colors.dart';
import 'package:al_hadith/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReadingPage extends StatelessWidget {
  ReadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('বিষয়ভিত্তিক হাদিস',
          style: myTextStyle(20.sp, FontWeight.bold, primaryTextColor)),
    );
  }
}
