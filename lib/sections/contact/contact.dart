import 'package:flutter/material.dart';
import 'package:codemucho/responsive/responsive.dart';
import 'package:codemucho/sections/contact/contact_desktop.dart';
import 'package:codemucho/sections/contact/contact_mobile.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ContactMobileTab(),
      tablet: ContactMobileTab(),
      desktop: ContactDesktop(),
    );
  }
}
