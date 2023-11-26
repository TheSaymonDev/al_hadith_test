import 'package:al_hadith/screens/bottom_nav_bar_pages/book_page.dart';
import 'package:al_hadith/screens/bottom_nav_bar_pages/bookmark_page.dart';
import 'package:al_hadith/screens/bottom_nav_bar_pages/home_page.dart';
import 'package:al_hadith/screens/bottom_nav_bar_pages/reading_page.dart';
import 'package:al_hadith/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBarPage extends StatefulWidget {
  BottomNavBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  var _selectedIndex = 0;
  List _pages = [HomePage(), ReadingPage(), BookPage(), BookMarkPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyColor,
      body: SafeArea(
        child: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.r),
            topRight: Radius.circular(15.r),
          ),
          color: secondaryTextColor,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.r),
            topRight: Radius.circular(15.r),
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chrome_reader_mode_outlined),
                  activeIcon: Icon(Icons.chrome_reader_mode),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.featured_play_list_outlined),
                  activeIcon: Icon(Icons.featured_play_list),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark_border),
                  activeIcon: Icon(Icons.bookmark),
                  label: ''),
            ],
            selectedItemColor: primaryColor,
            unselectedItemColor: greyColor,
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
