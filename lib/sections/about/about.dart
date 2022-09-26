import 'package:flutter/material.dart';
import 'package:codemucho/responsive/responsive.dart';
import 'package:codemucho/sections/about/about_desktop.dart';
import 'package:codemucho/sections/about/about_mobile.dart';
import 'package:codemucho/sections/about/about_tablet.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      tablet: AboutTab(),
      mobile: AboutMobile(),
      desktop: AboutDesktop(),
    );
  }
}
