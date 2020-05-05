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
 'about_us':'Al-EBBDA AL-Thahabi Investments was established in 2015 to support, develop SME businesses and Trade around UAE in Organic and Sustainable projects, it created with the purpose of encouraging and developing the organic industry the UAE. In Agriculture sector Alebdaa partnership with Nabta Agriculture. Nabta is a community business which gathered group of people who have experience in agriculture. The purpose of this partnership is to share information, cooperate in the business and participate in events and exhibition and trading. ALEBDAA App  is part of the awareness program that will help the community to know about how to grow there own food. ',
   'become':'Become A Partner',
  'home':'Home',
  'about':'About Us',
  'contact':'Contact',
  'video':'Video',
  'list':'Listing',
  'number':'+971505447799',


      'more':'More',
      'title':'Title',
      'sno':'S.No.',
      'cultichart':'Cultivation',
      'organic':'NABTA',
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
   'Mission': 'Participate in growth of organic sector and encourage young farmers to invest in their farms as well as support traditional farmers to adopt new technology in farming. Also raise awareness of importance of organic industry to be available and spread widely among United Arab Emirates.',
  'Vission': 'Our Vision: develop agriculture sector and promote UAE to become on the top of organic and sustainable industry to  be market leader in GCC and middle-east. At same time continuing support to meet clients and business needs as they develop.'



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
      'number':'971505447799+',
      'more':'أكثر',
      'title':'عنوان',
      'sno':'رقم سري',

      'cultichart':'زراعة',
      'organic': 'نبتة',
      'one':'١',
      'two':'١',

      'name':'اسم',
      'plant':'تاريخ الزراعة',
      'inthe':'في الحقل',
      'harv':'حصاد',
      'family':'عائلة',

      'who':'من نحن',
      'txtAbout':'معلومات عنا',
      'about_us' : 'تأسست شركة الإبداع الذهبي للاستثمار في عام 2015 لتأسيس  وتطوير الشركات الصغيرة والمتوسطة والتجارة حول دولة الإمارات العربية المتحدة في المشاريع الزراعية للإنتاج العضوي والمستدام ، وقد تم إنشاؤها بهدف تشجيع وتطوير الصناعة العضوية و المستدامة في الإمارات العربية المتحدة. في قطاع التطوير الزراعي تم  التعاون مع شركة نبتة الزراعية .و هي شركة مجتمعية تجمع مجموعة من الناس الذين   لديهم خبرة في الزراعة المستدامة و التجارة بمستلزماتها . الغرض من هذه الشراكة هو  تبادل المعلومات والتعاون في الأعمال والمشاركة في الأحداث والمعارض.  " الإبداع AL-EBDAA "هو جزء من برامج التثقيفية و التوعوية  للمجتمع بكيفية زراعة غذائهم بنفسهم ',
       'mission':'رسالتنا ',
      'vission':'رؤيتنا ',
      'Mission': 'المشاركة في نمو قطاع   الإنتاج العضوي و المستدام وتشجيع أصحاب المزارعين على الاستثمار في مزارعهم وكذلك   دعم المزارعين التقليديين لتبني تكنولوجيا جديدة في الزراعة. و رفع الوعي بأهمية   الصناعة العضوية و المستدامة  لتكون متاحة   ونشرها على نطاق واسع بين الإمارات العربية المتحدة',
  'Vission':'تطوير قطاع الزراعة العضوية وتعزيز مكانة الإمارت لتصبح الأولى خليجياً وعربياً في الانتاج والزراعة العضويه مع المحافظة على تطوير امكانياتنا لتتناسب مع تطور احتياجات عملائنا.',


    },
  };


  String get btna {
    return _localizedValues[locale.languageCode]['btn_ar'];
  }
  String get number {
    return _localizedValues[locale.languageCode]['number'];
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