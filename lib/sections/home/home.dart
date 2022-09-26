import 'package:flutter/material.dart';
import 'package:codemucho/responsive/responsive.dart';
import 'package:codemucho/sections/home/home_desktop.dart';
import 'package:codemucho/sections/home/home_mobile.dart';
import 'package:codemucho/sections/home/home_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeMobile(),
      tablet: HomeTab(),
      desktop: HomeDesktop(),
    );
  }
}
