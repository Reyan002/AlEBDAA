import 'dart:async';

import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';

class TranslationBase {
  TranslationBase(this.locale);

  final Locale locale;

  static TranslationBase of(BuildContext context) {
    return Localizations.of<TranslationBase>(context, TranslationBase);
  }


  static Map<String, Map<String, String>> _localizedValues = {
    'en': {

      'btne': 'English',
      'btna': 'Arabic',
      'en': 'en',


  'app_name': 'Al-Ebdaa',
  'btn_en':'English',
  'btn_ar' : 'Arabic',
  'about_us' : 'Al-EBBDA AL-ZAHABI Investments is a company invests in many sectors (commercial, industrial, agriculture, education, petrol and gas, tourism) was established to support and develop SME businesses around UAE and Organic Guild is part of Al-EBBDA AL-ZAHABI, its created with the purpose of encouraging and developing the organic industry the UAE. Organic Guild is group of companies that are organic certified or related to it or have passion to it. The purpose of this group is to share information, cooperate in the business and participate in events and exhibition.',
  'become':'Become A Partner',
  'home':'Home',
  'about':'About Us',
  'contact':'Contact',
  'video':'Video',
  'list':'Listing',

      'more':'More',
      'title':'Title',
      'sno':'S.No.',
      'cultichart':'Cultivation Chart',
      'organic':'Organic Guild',
      'one':'1',
      'two':'2',

      'name':'Name',
      'plant':'PLANT DATE',
      'inthe':'IN THE FIELD',
      'harv':'HARVEST',
      'family':'FAMILY',

   'who':'WHO WE ARE ',
   'txtAbout':'About Us',
   'mission':'Our Mission ',
   'vission':'Our Vision ',
   'Mission':'participate in growth of organic sector and encourage young farmers to invest in their farms as well as support traditional farmers to adopt new technology in farming. Also raise awareness of importance of organic industry to be available and spread widely among United Arab Emirates.',
   'Vission':'develop agriculture sector and promote UAE to become on the top of organic industry and be market leader in GCC and middle-east. At same time continuing support to meet clients and business needs as they develop.',




},
    'ar': {
       'btna': 'عربى',
      'btne': 'الإنجليزية',
      'en': 'ar',


      'app_name': 'Al-Ebdaa',
      'btn_en':'الإنجليزية',
      'btn_ar' : 'عربى',
      'become':'كن شريكا',
      'home':'الصفحة الرئيسية',
      'about':'معلومات عنا',
      'contact':'اتصل',
      'video':'فيديو',
      'list':'قائمة',

      'more':'أكثر',
      'title':'عنوان',
      'sno':'رقم سري',

      'cultichart':'مخطط الزراعة',
      'organic':'النقابة العضوية',
      'one':'١',
      'two':'١',

      'name':'اسم',
      'plant':'تاريخ الزراعة',
      'inthe':'في الحقل',
      'harv':'حصاد',
      'family':'عائلة',

      'who':'من نحن',
      'txtAbout':'معلومات عنا',
      'about_us' : 'الإبداع الذهبي للإستثمار هي شركة تستثمر في العديد من القطاعات (التجارة، الصناعة، الزراعة، التعليم، البترول والغاز، السياحة) تأسست لدعم وتطوير الشركات الصغيرة والمتوسطة في دولة الإمارات العربية المتحدة و فريق الأورغانيك هي جزء من شركة الإبداع الذهبي للإستثمار أُنشئت للاهتمام ومتابعة وتطوير قطاع الانتاج العضوي في دولة الإمارات. فريق الأورغانيك او الفريق العضوي هو مجموعة من الشركات المرخصة لممارسة النشاط العضوي و الشركات المهتمة بالمجال العضوي لتبادل المعلومات والخبرات والمشاركة في المعارض و الاحداث المرتبطة بالزراعة والمنتجات العضوية.',
       'mission':'رسالتنا ',
      'vission':'رؤيتنا ',
      'Mission':'رسالتنا : المساهمة في نمو قطاع المنتجات والزراعة العضوية وتحفيز المزارعين الشباب لاستثمار مزارعم وتشجيع المزارعين التقليديين لتبني طرق جديدة في الزراعة، بالإضافة الى نشر الوعي بأهمية توافر المنتجات العضوية وانتشارها على نطاق واسع في دولة الامارات.',
      'Vission':'تطوير قطاع الزراعة العضوية وتعزيز مكانة الإمارت لتصبح الأولى خليجياً وعربياً في الانتاج والزراعة العضويه مع المحافظة على تطوير امكانياتنا لتتناسب مع تطور احتياجات عملائنا.',


    },
  };


  String get btna {
    return _localizedValues[locale.languageCode]['btn_ar'];
  }
  String get en {
    return _localizedValues[locale.languageCode]['en'];
  }
  String get btne {
    return _localizedValues[locale.languageCode]['btn_en'];
  }
  String get subTitle {
    return _localizedValues[locale.languageCode]['subTitle'];
  }
  String get become {
    return _localizedValues[locale.languageCode]['become'];
  }
  String get who {
    return _localizedValues[locale.languageCode]['who'];
  }
  String get about_us {
    return _localizedValues[locale.languageCode]['about_us'];
  }
  String get txtAbout {
    return _localizedValues[locale.languageCode]['txtAbout'];
  }
  String get mission {
    return _localizedValues[locale.languageCode]['mission'];
  }
  String get vission {
    return _localizedValues[locale.languageCode]['vission'];
  }
  String get Mission {
    return _localizedValues[locale.languageCode]['Mission'];
  }
  String get Vission {
    return _localizedValues[locale.languageCode]['Vission'];
  }
  String get home {
    return _localizedValues[locale.languageCode]['home'];
  }
  String get about {
    return _localizedValues[locale.languageCode]['about'];
  }
  String get contact {
    return _localizedValues[locale.languageCode]['contact'];
  }
  String get video {
    return _localizedValues[locale.languageCode]['video'];
  }
  String get list {
    return _localizedValues[locale.languageCode]['list'];
  }
  String get more {
    return _localizedValues[locale.languageCode]['more'];
  }
  String get title {
    return _localizedValues[locale.languageCode]['title'];
  }
  String get sno {
    return _localizedValues[locale.languageCode]['sno'];
  }
  String get cultichart {
    return _localizedValues[locale.languageCode]['cultichart'];
  }
  String get organic {
    return _localizedValues[locale.languageCode]['organic'];
  }
  String get one {
    return _localizedValues[locale.languageCode]['one'];
  }
  String get two {
    return _localizedValues[locale.languageCode]['two'];
  }
  String get name {
    return _localizedValues[locale.languageCode]['name'];
  }
  String get plant {
    return _localizedValues[locale.languageCode]['plant'];
  }
  String get inthe {
    return _localizedValues[locale.languageCode]['inthe'];
  }
  String get harv {
    return _localizedValues[locale.languageCode]['harv'];
  }
  String get family {
    return _localizedValues[locale.languageCode]['family'];
  }

}

class TranslationBaseDelegate extends LocalizationsDelegate<TranslationBase> {
  const TranslationBaseDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ar'].contains(locale.languageCode);

  @override
  Future<TranslationBase> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of DemoLocalizations.
    return SynchronousFuture<TranslationBase>(TranslationBase(locale));
  }

  @override
  bool shouldReload(TranslationBaseDelegate old) => false;
}