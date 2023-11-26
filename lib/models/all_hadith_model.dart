import 'package:al_hadith/models/hadith_chapter_model.dart';

class AllHadithModel {
  String nickName, bookName, imamName, hadithNo;
  int color;
  List<HadithChapterModel> hadithChapterList;

  AllHadithModel(
      {required this.nickName,
      required this.bookName,
      required this.imamName,
      required this.hadithNo,
      required this.color,
      required this.hadithChapterList});

  static List<AllHadithModel> allHadithBookList = [
    AllHadithModel(
        nickName: 'B',
        bookName: 'সহিহ বুখারী',
        imamName: 'ইমাম বুখারী',
        hadithNo: '৭৫৬৩',
        color: 0xffC39BD3,
        hadithChapterList: HadithChapterModel.hadithBook1),
    AllHadithModel(
        nickName: 'M',
        bookName: 'সহিহ মুসলিম',
        imamName: 'ইমাম মুসলিম',
        hadithNo: '৭৪৫৩',
        color: 0xffE6B0AA,
        hadithChapterList: HadithChapterModel.hadithBook2),
    AllHadithModel(
        nickName: 'N',
        bookName: 'সুনানে আন-নাসায়ী',
        imamName: 'ইমাম নাসায়ী',
        hadithNo: '৫৭৫৮',
        color: 0xffAED6F1,
        hadithChapterList: HadithChapterModel.hadithBook3),
    AllHadithModel(
        nickName: 'AD',
        bookName: 'সুনানে আবু দাউদ',
        imamName: 'ইমাম আবু দাউদ',
        hadithNo: '৫২৭৪',
        color: 0xffE59866,
        hadithChapterList: HadithChapterModel.hadithBook4),
    AllHadithModel(
        nickName: 'T',
        bookName: 'জামে আত-তিরমিজি',
        imamName: 'ইমাম তিরমিজি',
        hadithNo: '৩৯৫৬',
        color: 0xff909497,
        hadithChapterList: HadithChapterModel.hadithBook5),
    AllHadithModel(
        nickName: 'B',
        bookName: 'সহিহ বুখারী',
        imamName: 'ইমাম বুখারী',
        hadithNo: '৭৫৬৩',
        color: 0xffC39BD3,
        hadithChapterList: HadithChapterModel.hadithBook1),
    AllHadithModel(
        nickName: 'M',
        bookName: 'সহিহ মুসলিম',
        imamName: 'ইমাম মুসলিম',
        hadithNo: '৭৪৫৩',
        color: 0xffE6B0AA,
        hadithChapterList: HadithChapterModel.hadithBook2),
    AllHadithModel(
        nickName: 'N',
        bookName: 'সুনানে আন-নাসায়ী',
        imamName: 'ইমাম নাসায়ী',
        hadithNo: '৫৭৫৮',
        color: 0xffAED6F1,
        hadithChapterList: HadithChapterModel.hadithBook3),
    AllHadithModel(
        nickName: 'AD',
        bookName: 'সুনানে আবু দাউদ',
        imamName: 'ইমাম আবু দাউদ',
        hadithNo: '৫২৭৪',
        color: 0xffE59866,
        hadithChapterList: HadithChapterModel.hadithBook4),
    AllHadithModel(
        nickName: 'T',
        bookName: 'জামে আত-তিরমিজি',
        imamName: 'ইমাম তিরমিজি',
        hadithNo: '৩৯৫৬',
        color: 0xff909497,
        hadithChapterList: HadithChapterModel.hadithBook5),
  ];
}
