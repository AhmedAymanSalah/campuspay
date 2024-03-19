import 'package:campuspay/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:campuspay/features/services/data/services_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/app_regex.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theme/colors.dart';
import '../../../core/widgets/app_text_form_field.dart';
import '../../../core/widgets/custom_text_widget.dart';

class PayServicesSceen extends StatelessWidget {
  final ServicesModel service;

  const PayServicesSceen({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: CustomTextWidget(text: service.title),
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
                ),
              ],
            ),
            verticalSpace(50),
            AppTextFormField(
              backGroundColorHint: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManager.darkBlue,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManager.darkBlue,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(
                Icons.person_outline,
                size: 20.sp,
              ),
              hintText: "Enter Your Code...",
              textInputType: TextInputType.number,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Please enter a valid email';
                }
              },
            ),
            const Spacer(),
            AppTextButton(text: "Go", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
