import 'package:al_hadith/models/hadith_chapter_model.dart';
import 'package:al_hadith/screens/hadith_details_page.dart';
import 'package:al_hadith/utils/colors.dart';
import 'package:al_hadith/utils/style.dart';
import 'package:al_hadith/utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChaptersPage extends StatelessWidget {
  ChaptersPage(
      {Key? key,
      this.hadithNo,
      this.bookName,
      this.nickName,
      this.hadithChapterlist})
      : super(key: key);

  String? hadithNo, bookName, nickName;
  List<HadithChapterModel>? hadithChapterlist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
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
                        '${hadithNo} হাদিস',
                        style: AppTextStyles.bodyText,
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: secondaryTextColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: backgroundDesign(
                child: Column(
                  children: [
                    SizedBox(
                      height: 48.h,
                      child: TextField(
                        cursorColor: primaryColor,
                        style: AppTextStyles.headline1,
                        decoration: textFieldStyle('Search by chapter'),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Flexible(
                      child: ListView.separated(
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Get.to(() => HadithDetailsPage(
                                  bookName: bookName,
                                  chapterName:
                                      hadithChapterlist![index].topicName,
                                  chapterNo: '${index + 1}',
                                  nickName: nickName,
                                  hadithDetailsList:
                                      hadithChapterlist![index].hadithDetails,
                                ));
                          },
                          child: Container(
                            height: 75.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: secondaryTextColor,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Row(
                              children: [
                                buildShape(index: index, text: '${index + 1}'),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      '${hadithChapterlist![index].topicName}',
                                      style: AppTextStyles.hadithListTitle,
                                    ),
                                    Text(
                                      'হাদিসের রেঞ্জঃ ${hadithChapterlist![index].range}',
                                      style: AppTextStyles.headline2,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                          height: 10.h,
                        ),
                        itemCount: hadithChapterlist!.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
