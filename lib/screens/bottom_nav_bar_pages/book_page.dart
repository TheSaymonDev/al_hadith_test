import 'package:al_hadith/utils/colors.dart';
import 'package:al_hadith/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookPage extends StatelessWidget {
  BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('তাহফিক',
          style: myTextStyle(20.sp, FontWeight.bold, primaryTextColor)),
    );
  }
}
