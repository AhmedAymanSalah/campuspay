import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CollageMailLink extends StatelessWidget {
  const CollageMailLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextWidget(
          text: "Or you can get it from the",
          fontWeight: FontWeight.bold,
        ),
        TextButton(
          onPressed: () async {
            var url = Uri.https(
              'https://www.youtube.com/watch?v=DbdnrSnRSJI&list=PLzzljR-_nWVVUuoj8Htmfy0hSmzfv0X57',
            );
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
            }
          },
          child: const CustomTextWidget(
            text: "university website",
            fontWeight: FontWeight.bold,
            color: ColorsManager.mainBlue,
          ),
        ),
      ],
    );
  }
}
