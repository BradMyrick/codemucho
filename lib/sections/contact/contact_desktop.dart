import 'package:flutter/material.dart';
import 'package:codemucho/animations/bottom_animation.dart';
import 'package:codemucho/configs/configs.dart';
import 'package:codemucho/utils/contact_utils.dart';
import 'package:codemucho/widget/custom_text_heading.dart';
import 'package:codemucho/widget/project_card.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.all(1, 1),
      child: Column(
        children: [
          const CustomSectionHeading(
            text: "\n Reach Out",
          ),
          const CustomSectionSubHeading(
            text: "Building a secure Web3\n\n",
          ),
          Space.y!,
          const WidgetAnimator(
            child: ProjectCard(
              projectIconData: ContactUtils.contactIcon,
              projectTitle: ContactUtils.title,
              projectDescription: ContactUtils.details,
            ),
          ),
        ],
      ),
    );
  }
}
