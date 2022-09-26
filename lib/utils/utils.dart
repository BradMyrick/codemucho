import 'package:flutter/material.dart';
import 'package:codemucho/sections/about/about.dart';
import 'package:codemucho/sections/contact/contact.dart';
import 'package:codemucho/sections/home/home.dart';
import 'package:codemucho/sections/services/services.dart';
import 'package:codemucho/widget/footer.dart';

class StaticUtils {
  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';
  static const String usPhoto = 'assets/photos/us.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services
  static const String appDev = 'assets/services/ui.png';
  static const String contracts = 'assets/services/blog.png';
  static const String nfts = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png"
  ];

  static const List<String> socialLinks = [
    "https://twitter.com/kodr_eth",
    "https://github.com/bradmyrick",
    "https://instagram.com/brad_myrick"
  ];

  static const String resume =
      'https://drive.google.com/file/d/1ymhQNOiN3-wROJ6FKaftFyDdW_Xzzrsm/view?usp=sharing';

  static const String gitHub = 'https://github.com/bradmyrick';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Contact(),
    Footer(),
  ];
}
