// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:campuspay/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/features/services/data/services_model.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/custom_text_widget.dart';
import '../../pay_screens/ui/pay_screen.dart';
import 'widget/text_formfiled_codePage.dart';

class PayServicesSceen extends StatelessWidget {
  final ServicesModel service;

  const PayServicesSceen({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: CustomTextWidget(
          text: service.title,
          color: ColorsManager.darkBlue,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(80),
            Row(
              children: [
                CircleAvatar(
                  child: Image.asset(
                    service.image,
                  ),
                ),
                horizontalSpace(8),
                CustomTextWidget(
                  text: service.title,
                  color: ColorsManager.darkBlue,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            verticalSpace(50),
            const CodeScreenTextFormFiled(),
            const Spacer(),
            AppTextButton(
                text: "Go",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PayScreen(
                        service: service,
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
