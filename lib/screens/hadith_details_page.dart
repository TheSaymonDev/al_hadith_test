import 'package:al_hadith/models/hadith_details_model.dart';
import 'package:al_hadith/utils/colors.dart';
import 'package:al_hadith/utils/style.dart';
import 'package:al_hadith/utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HadithDetailsPage extends StatelessWidget {
  HadithDetailsPage(
      {Key? key,
      this.bookName,
      this.chapterName,
      this.chapterNo,
      this.nickName,
      required this.hadithDetailsList})
      : super(key: key);

  String? bookName, chapterName, chapterNo, nickName;
  List<HadithDetailsModel> hadithDetailsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10.w, 15.h, 10.w, 15.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: secondaryTextColor,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${bookName}',
                        style: AppTextStyles.bookText,
                      ),
                      Text(
                        '${chapterName}',
                        style: AppTextStyles.bodyText,
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings_suggest,
                      color: secondaryTextColor,
                    ),
                  ),
                ],
              ),
            ),
            backgroundDesign(
              child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Column(
                        children: [
                          buildContainer(
                              index: index,
                              child: Column(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text:
                                          '${chapterNo}/${index + 1} Chapter: ',
                                      style: myTextStyle(
                                          14.sp, FontWeight.w600, primaryColor),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '${hadithDetailsList[index].title}',
                                            style: myTextStyle(
                                                14.sp,
                                                FontWeight.w600,
                                                primaryTextColor)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Divider(
                                    thickness: 2,
                                    color: Color(0xffEFEFEF),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Text(
                                    '${hadithDetailsList[index].subTitle}',
                                    style: myTextStyle(
                                        12.sp, FontWeight.w400, greyTextColor),
                                  )
                                ],
                              )),
                          SizedBox(
                            height: 10.h,
                          ),
                          buildContainer(
                              index: index,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 70.h,
                                        width: 70.w,
                                        child: buildShape(
                                            index: index, text: '${nickName}'),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text: 'Hadith No: ',
                                              style: myTextStyle(
                                                  13.sp,
                                                  FontWeight.w700,
                                                  primaryTextColor),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: '${index + 1}',
                                                    style: myTextStyle(
                                                        13.sp,
                                                        FontWeight.w700,
                                                        primaryColor)),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            '${bookName}',
                                            style: myTextStyle(
                                                12.sp,
                                                FontWeight.w400,
                                                primaryTextColor),
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.w, vertical: 6.h),
                                        decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(30.r)),
                                        child: Text(
                                          'Sahih',
                                          style: myTextStyle(
                                              12.sp,
                                              FontWeight.w500,
                                              secondaryTextColor),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            myBottomSheet(context);
                                          },
                                          icon: Icon(
                                            Icons.more_vert,
                                            color: greyColor,
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '${hadithDetailsList[index].hadith}',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w400,
                                        color: primaryTextColor,
                                        height: 1.8),
                                    textAlign: TextAlign.right,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '${hadithDetailsList[index].said}',
                                    style: myTextStyle(
                                        14.sp, FontWeight.w600, primaryColor),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    '${hadithDetailsList[index].meaning}',
                                    style: myTextStyle(14.sp, FontWeight.w400,
                                        primaryTextColor),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Text(
                                    '${hadithDetailsList[index].reference}',
                                    style: myTextStyle(
                                        12.sp, FontWeight.w400, greyTextColor),
                                  )
                                ],
                              ))
                        ],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 15.h,
                      ),
                  itemCount: hadithDetailsList.length),
            )
          ],
        ),
      )),
    );
  }

  void myBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 442.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: secondaryTextColor,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.r),
                topLeft: Radius.circular(30.r))),
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'More Options',
                  style: myTextStyle(15.sp, FontWeight.w600, primaryTextColor),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close))
              ],
            ),
            SizedBox(height: 15.h),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(bottomSheetList[index]['icon']),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            '${bottomSheetList[index]['name']}',
                            style: myTextStyle(
                                14.sp, FontWeight.w500, greyTextColor),
                          )
                        ],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 18.h,
                      ),
                  itemCount: bottomSheetList.length),
            )
          ],
        ),
      ),
    );
  }

  List<Map> bottomSheetList = [
    {'icon': 'images/Vector.png', 'name': 'Go To Main Hadith'},
    {'icon': 'images/Vector1.png', 'name': 'Add to Collection'},
    {'icon': 'images/Vector2.png', 'name': 'Bangla Copy'},
    {'icon': 'images/Vector3.png', 'name': 'English Copy'},
    {'icon': 'images/Vector4.png', 'name': 'Arabic Copy'},
    {'icon': 'images/Vector5.png', 'name': 'Add Hifz'},
    {'icon': 'images/Vector6.png', 'name': 'Add Note'},
    {'icon': 'images/Vector7.png', 'name': 'Share'},
    {'icon': 'images/Vector8.png', 'name': 'Report'},
  ];
}
