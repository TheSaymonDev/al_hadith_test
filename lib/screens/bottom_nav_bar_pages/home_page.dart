import 'package:al_hadith/models/all_hadith_model.dart';
import 'package:al_hadith/screens/chapters_page.dart';
import 'package:al_hadith/utils/colors.dart';
import 'package:al_hadith/utils/style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: 330.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.r),
                    bottomLeft: Radius.circular(20.r)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.r),
                    bottomLeft: Radius.circular(20.r)),
                child: Image.asset(
                  'images/Union.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Positioned(
                child: Padding(
              padding: EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 0.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            color: secondaryTextColor,
                          )),
                      Text(
                        'Al Hadith',
                        style: AppTextStyles.appBarTitle,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: secondaryTextColor,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CarouselSlider(
                    items: List.generate(
                      5,
                      (index) => Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '“A slave [of Allah] may utter a word without giving it much thought by which he slips into the fire a distance further than that between east and west.”',
                              style: AppTextStyles.bodyText,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '[ Bukhari and Muslim ]',
                              style: AppTextStyles.bodyText,
                            )
                          ],
                        ),
                      ),
                    ),
                    options: CarouselOptions(
                        height: 122, autoPlay: true, viewportFraction: 1),
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  Container(
                    height: 86.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: secondaryTextColor,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('images/last.png'),
                            Text('Last', style: AppTextStyles.headline2)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('images/goto.png'),
                            Text('Go To', style: AppTextStyles.headline2)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('images/apps.png'),
                            Text('Apps', style: AppTextStyles.headline2)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('images/sadaqa.png'),
                            Text('Sadaqa', style: AppTextStyles.headline2)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'All Hadith Book',
                    style: AppTextStyles.headline1,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Flexible(
                    child: ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => ListTile(
                              onTap: () {
                                Get.to(() => ChaptersPage(
                                      bookName: AllHadithModel
                                          .allHadithBookList[index].bookName,
                                      hadithNo: AllHadithModel
                                          .allHadithBookList[index].hadithNo,
                                      nickName: AllHadithModel
                                          .allHadithBookList[index].nickName,
                                      hadithChapterlist: AllHadithModel
                                          .allHadithBookList[index]
                                          .hadithChapterList,
                                    ));
                              },
                              tileColor: secondaryTextColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r)),
                              leading: ClipPolygon(
                                sides: 6,
                                borderRadius: 5.0,
                                rotate: 60.0,
                                child: Container(
                                    alignment: Alignment.center,
                                    color: Color(AllHadithModel
                                        .allHadithBookList[index].color),
                                    child: Text(
                                      AllHadithModel
                                          .allHadithBookList[index].nickName,
                                      style: AppTextStyles.nickName,
                                    )),
                              ),
                              title: Text(
                                AllHadithModel
                                    .allHadithBookList[index].bookName,
                                style: AppTextStyles.hadithListTitle,
                              ),
                              subtitle: Text(
                                AllHadithModel
                                    .allHadithBookList[index].imamName,
                                style: AppTextStyles.headline2,
                              ),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    AllHadithModel
                                        .allHadithBookList[index].hadithNo,
                                    style: AppTextStyles.hadithListTitle,
                                  ),
                                  Text(
                                    'হাদিস',
                                    style: AppTextStyles.headline2,
                                  )
                                ],
                              ),
                            ),
                        separatorBuilder: (context, index) => SizedBox(
                              height: 10.h,
                            ),
                        itemCount: AllHadithModel.allHadithBookList.length),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
