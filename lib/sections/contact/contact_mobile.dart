import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:codemucho/configs/app_dimensions.dart';
import 'package:codemucho/utils/contact_utils.dart';
import 'package:codemucho/widget/custom_text_heading.dart';
import 'package:codemucho/widget/project_card.dart';

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSectionHeading(
          text: "\nReach Out",
        ),
        const CustomSectionSubHeading(
          text: "\n\nLet's build Web3 together\n\n",
        ),
        CarouselSlider.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int itemIndex, int i) =>
              const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: ProjectCard(
              projectIconData: ContactUtils.contactIcon,
              projectTitle: ContactUtils.title,
              projectDescription: ContactUtils.details,
            ),
          ),
          options: CarouselOptions(
            height: AppDimensions.normalize(90),
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
      ],
    );
  }
}
